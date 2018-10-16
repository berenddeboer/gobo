note

	description:

		"Test features of class ET_AST_PRETTY_PRINTER"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date$"
	revision: "$Revision$"

class ET_TEST_AST_PRETTY_PRINTER

inherit

	TS_TEST_CASE
		redefine
			make_default
		end

	KL_SHARED_FILE_SYSTEM
		export {NONE} all end

	KL_SHARED_EXECUTION_ENVIRONMENT
		export {NONE} all end

	KL_SHARED_EIFFEL_COMPILER
		export {NONE} all end

	UC_SHARED_STRING_EQUALITY_TESTER
		export {NONE} all end

	UT_SHARED_ISE_VERSIONS
		export {NONE} all end

	ET_SHARED_ISE_VARIABLES
		export {NONE} all end

create

	make_default

feature {NONE} -- Initialization

	make_default
			-- <Precursor>
		do
			precursor
			ecf_filename := default_ecf_filename
		end

feature -- Access

	ecf_filename: STRING
			-- Name of ECF file used for the test

feature -- Setting

	set_ecf_filename (a_filename: STRING)
			-- Set `ecf_filename' to `a_filename'.
		require
			a_filename_not_void: a_filename /= Void
			a_filename_not_empty: not a_filename.is_empty
		do
			ecf_filename := a_filename
		ensure
			ecf_filename_set: ecf_filename = a_filename
		end

feature -- Test

	test_printer
			-- Test pretty-printer with the Eiffel classes of `ecf_filename'.
		local
			l_ecf_filename: STRING
			l_ecf_file: KL_TEXT_INPUT_FILE
			l_eiffel_ast_factory: ET_DECORATED_AST_FACTORY
			l_ecf_parser: ET_ECF_SYSTEM_PARSER
			l_ecf_error_handler: ET_ECF_ERROR_HANDLER
			l_system: ET_SYSTEM
			ise_version: UT_VERSION
			l_system_processor: ET_SYSTEM_PROCESSOR
		do
				-- For compatibility with ISE's tools, define the environment
				-- variable "$ISE_LIBRARY" to $ISE_EIFFEL" if not set yet.
			ise_variables.set_ise_library_variable
			if eiffel_compiler.is_ise then
				ise_version := ise_latest
			elseif eiffel_compiler.is_ge then
				ise_version := ise_latest
			end
			if variables.has ("ecf_filename") then
				l_ecf_filename := variables.value ("ecf_filename")
			else
				l_ecf_filename := ecf_filename
			end
			create l_ecf_file.make (l_ecf_filename)
			l_ecf_file.open_read
			assert ("ecf_file_opened", l_ecf_file.is_open_read)
			create l_ecf_error_handler.make_standard
			create l_ecf_parser.make (l_ecf_error_handler)
			if ise_version /= Void then
				l_ecf_parser.set_ise_version (ise_version)
			end
			l_ecf_parser.parse_file (l_ecf_file, Void)
			assert ("ecf_parsed", not l_ecf_error_handler.has_error)
			l_system := l_ecf_parser.last_system
			l_ecf_file.close
			assert ("system_not_void", l_system /= Void)
			create l_system_processor.make
			l_system_processor.set_ise_version (ise_version)
				-- We restrict this test to files that contain only one class.
			l_system_processor.set_preparse_single_mode
			create l_eiffel_ast_factory.make
			l_eiffel_ast_factory.set_keep_all_breaks (True)
			l_system_processor.set_ast_factory (l_eiffel_ast_factory)
			l_system.preparse_recursive (l_system_processor)
			l_system.classes_do_recursive (agent check_class (?, l_system_processor))
		end

feature {NONE} -- Test

	check_class (a_class: ET_CLASS; a_system_processor: ET_SYSTEM_PROCESSOR)
			-- Check that after parsing `a_class' and pretty-printing its AST
			-- we get the same tokens.
		require
			a_class_not_void: a_class /= Void
			a_system_processor_not_void: a_system_processor /= Void
		local
			l_printer: ET_AST_PRETTY_PRINTER
			l_tokenizer: ET_AST_TOKENIZER
			l_pretty_printer_output: KL_STRING_OUTPUT_STREAM
			l_pretty_printed_class: ET_CLASS
			l_tokenizer_output1: KL_STRING_OUTPUT_STREAM
			l_tokenizer_output2: KL_STRING_OUTPUT_STREAM
		do
			if a_class.is_in_cluster then
				a_class.process (a_system_processor.eiffel_parser)
				assert (a_class.lower_name + "_parsed", a_class.is_parsed)
				assert (a_class.lower_name + "_no_syntax_error", not a_class.has_syntax_error)
				create l_pretty_printer_output.make_empty
				create l_printer.make_null
				l_printer.set_file (l_pretty_printer_output)
				a_class.process (l_printer)
				l_printer.set_null_file
				l_pretty_printed_class := class_from_class_text (a_class.upper_name, l_pretty_printer_output.string)
				l_pretty_printed_class.process (a_system_processor.eiffel_parser)
				assert (a_class.lower_name + "_pretty_printed_parsed", l_pretty_printed_class.is_parsed)
				assert (a_class.lower_name + "_pretty_printed_no_syntax_error", not l_pretty_printed_class.has_syntax_error)
				create l_tokenizer.make_null
				l_tokenizer.set_separator (" ")
				l_tokenizer.set_empty_actual_arguments_ignored (True)
				l_tokenizer.set_empty_actual_parameters_ignored (True)
				l_tokenizer.set_empty_exports_ignored (True)
				l_tokenizer.set_empty_formal_arguments_ignored (True)
				l_tokenizer.set_empty_invariants_ignored (True)
				l_tokenizer.set_empty_locals_ignored (True)
				l_tokenizer.set_empty_postconditions_ignored (True)
				l_tokenizer.set_empty_preconditions_ignored (True)
				l_tokenizer.set_feature_keyword_in_static_ignored (True)
				l_tokenizer.set_is_keyword_ignored_ignored (True)
				l_tokenizer.set_semicolon_ignored (True)
				l_tokenizer.set_token_lower_case (True)
				create l_tokenizer_output1.make_empty
				l_tokenizer.set_file (l_tokenizer_output1)
				a_class.process (l_tokenizer)
				l_tokenizer.set_null_file
				create l_tokenizer_output2.make_empty
				l_tokenizer.set_file (l_tokenizer_output2)
				l_pretty_printed_class.process (l_tokenizer)
				l_tokenizer.set_null_file
				assert_strings_equal (a_class.lower_name + "_diff", l_tokenizer_output1.string, l_tokenizer_output2.string)
			end
		end

feature {NONE} -- Implementation

	class_from_class_text (a_class_name, a_class_text: STRING): ET_CLASS
			-- Class from class text
		require
			a_class_name_not_void: a_class_name /= Void
			a_class_name_not_empty: not a_class_name.is_empty
			a_class_text_not_void: a_class_text /= Void
		local
			l_system: ET_SYSTEM
			l_group: ET_TEXT_GROUP
			l_identifier: ET_IDENTIFIER
		do
			create l_system.make ("test_system")
			create l_group.make ("text_group", l_system)
			create l_identifier.make (a_class_name)
			create Result.make (l_identifier)
			Result.set_time_stamp (-1)
			Result.set_group (l_group)
			l_group.set_class_text (a_class_text, Result)
		ensure
			class_from_class_text_not_void: Result /= Void
		end

	default_ecf_filename: STRING
			-- Default name of ECF file used for the test
		once
			Result := file_system.nested_pathname ("${GOBO}", <<"library", "tools", "test", "unit", "data", "ast_printer.ecf">>)
			Result := Execution_environment.interpreted_string (Result)
		ensure
			default_ecf_filename_not_void: Result /= Void
			default_ecf_filename_not_empty: not Result.is_empty
		end

invariant

	ecf_filename_not_void: ecf_filename /= Void
	ecf_filename_not_empty: not ecf_filename.is_empty

end
