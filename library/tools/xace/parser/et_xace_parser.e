indexing

	description:

		"Xace parsers"

	library:	"Gobo Eiffel Tools Library"
	author:		"Andreas Leitner <nozone@sbox.tugraz.at>"
	copyright:	"Copyright (c) 2001, Andreas Leitner and others"
	license:	"Eiffel Forum Freeware License v1 (see forum.txt)"
	date:		"$Date$"
	revision:	"$Revision$"

class ET_XACE_PARSER

inherit

	ET_XACE_ELEMENT_NAMES
		export {NONE} all end

creation

	make, make_with_variables

feature {NONE} -- Initialization

	make (an_error_handler: like error_handler) is
			-- Create a new Xace parser.
		require
			an_error_handler_not_void: an_error_handler /= Void
		local
			a_variables: ET_XACE_VARIABLES
		do
			!! a_variables.make
			make_with_variables (a_variables, an_error_handler)
		ensure
			error_handler_set: error_handler = an_error_handler
		end

	make_with_variables (a_variables: ET_XACE_VARIABLES; an_error_handler: like error_handler) is
			-- Create a new Xace parser.
		require
			a_variables_not_void: a_variables /= Void
			an_error_handler_not_void: an_error_handler /= Void
		local
			a_cluster_parser: ET_XACE_CLUSTER_PARSER
			a_parser_factory: XM_PARSER_FACTORY
		do
			error_handler := an_error_handler
			-- We must not create a new ET_XACE_CLUSTER_PARSER
			-- object if `Current' is one already, or we will
			-- recurse in this routine forever
			a_cluster_parser ?= Current
			if a_cluster_parser = Void then
				!! a_cluster_parser.make_with_variables (a_variables, error_handler)
			end
			!! ast_factory.make (a_cluster_parser, error_handler)
			!! xml_preprocessor.make (a_variables, error_handler)
			!! xml_validator.make (an_error_handler)
			!! a_parser_factory.make
			if a_parser_factory.is_toe_eiffel_tree_available then
				xml_parser := a_parser_factory.new_toe_eiffel_tree_parser
				xml_parser.enable_position_table
			else
				error_handler.report_no_parser_available_error
			end
		ensure
			error_handler_set: error_handler = an_error_handler
		end

feature -- Parsing

	parse_file (a_file: KI_CHARACTER_INPUT_STREAM) is
			-- Parse Xace file `a_file'.
		require
			a_file_not_void: a_file /= Void
			a_file_open_read: a_file.is_open_read
		local
			a_root_name: UC_STRING
			a_system: ET_XACE_UNIVERSE
			a_cluster: ET_XACE_CLUSTER
		do
			if xml_parser /= Void then
				xml_parser.parse_from_stream (a_file)
				if xml_parser.is_correct then
					a_root_name := xml_parser.document.root_element.name
					if a_root_name.is_equal (uc_system) then
						xml_validator.validate_system_doc (xml_parser.document, xml_parser.last_position_table)
						if not xml_validator.has_error then
							xml_preprocessor.preprocess_composite (xml_parser.document, xml_parser.last_position_table)
							a_system := ast_factory.new_universe (xml_parser.document.root_element)
						end
					elseif a_root_name.is_equal (uc_cluster) then
						xml_validator.validate_cluster_doc (xml_parser.document, xml_parser.last_position_table)
						if not xml_validator.has_error then
							xml_preprocessor.preprocess_composite (xml_parser.document, xml_parser.last_position_table)
							a_cluster := ast_factory.new_cluster (xml_parser.document.root_element)
						end
					else
						error_handler.report_not_xace_file_error (a_file.name)
					end
				else
					error_handler.report_parser_error (xml_parser.last_error_extended_description)
				end
			else
				error_handler.report_no_parser_available_error
			end
		end

feature -- Access

	ast_factory: ET_XACE_AST_FACTORY
			-- Abstract Syntax Tree factory

	error_handler: ET_XACE_ERROR_HANDLER
			-- Error handler

feature {NONE} -- Implementation

	xml_parser: XM_TREE_PARSER
			-- XML parser

	xml_validator: ET_XACE_VALIDATOR
			-- XML validator

	xml_preprocessor: ET_XACE_PREPROCESSOR
			-- XML preprocessor

invariant

	error_handler_not_void: error_handler /= Void
	ast_factory_not_void: ast_factory /= Void
	position_table_enabled: xml_parser /= Void implies xml_parser.is_position_table_enabled
	xml_validator_not_void: xml_validator /= Void
	xml_preprocessor_not_void: xml_preprocessor /= Void

end -- class ET_XACE_PARSER
