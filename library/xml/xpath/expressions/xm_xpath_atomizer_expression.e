indexing

	description:

		"Objects that map a sequence by replacing nodes with their typed values. Corresponds to fn:data()"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class XM_XPATH_ATOMIZER_EXPRESSION

inherit

	XM_XPATH_COMPUTED_EXPRESSION
		redefine
			simplify, promote, sub_expressions, iterator, evaluate_item
		end

	XM_XPATH_MAPPING_FUNCTION

creation

	make

feature {NONE} -- Initialization

	make (a_sequence: XM_XPATH_EXPRESSION) is
			-- Establish invariant
		require
			sequence_not_void: a_sequence /= Void
		do
			base_expression := a_sequence
			compute_static_properties
		ensure
			base_expression_set: base_expression = a_sequence
			static_properties_computed: are_static_properties_computed
		end

feature -- Access
	
	item_type: INTEGER is
			--Determine the data type of the expression, if possible
		do
			Result := Atomic_type
		end

	base_expression: XM_XPATH_EXPRESSION
			-- Base expression

	sub_expressions: DS_ARRAYED_LIST [XM_XPATH_EXPRESSION] is
			-- Immediate sub-expressions of `Current'
		do
			create Result.make (1)
			Result.set_equality_tester (expression_tester)
			Result.put_last (base_expression)
		end

	iterator (a_context: XM_XPATH_CONTEXT): XM_XPATH_SEQUENCE_ITERATOR [XM_XPATH_ITEM] is
			-- Iterator over the values of a sequence
		do
			todo ("iterator", False)
		end

	map (an_item: XM_XPATH_ITEM; a_context: XM_XPATH_CONTEXT; an_information_object: ANY): XM_XPATH_MAPPED_ITEM is
			-- Map `an_item' to a sequence
		do
			-- TODO
			todo ("map", False)
		end

feature -- Status report

	display (a_level: INTEGER; a_pool: XM_XPATH_NAME_POOL) is
			-- Diagnostic print of expression structure to `std.error'
		do
			std.error.put_string (STRING_.appended_string (indent (a_level), "atomize"))
			std.error.put_new_line
		end

feature -- Optimization

	simplify: XM_XPATH_EXPRESSION is
			-- Simplify `Current';
			-- This default implementation does nothing.
		do
			todo ("simplify", False)
		end


	analyze (a_context: XM_XPATH_STATIC_CONTEXT) is
			-- Perform static analysis of an expression and its subexpressions
		do
			if base_expression.may_analyze then
				base_expression.analyze (a_context)
				if base_expression.is_error then
					set_last_error (base_expression.last_error)
				else
					if base_expression.was_expression_replaced then
						base_expression := base_expression.replacement_expression
					end
					if is_sub_type (base_expression.item_type, Atomic_type) then
						was_expression_replaced := True
						replacement_expression := base_expression
					end
				end
			end
		end

	promote (an_offer: XM_XPATH_PROMOTION_OFFER): XM_XPATH_EXPRESSION is
			-- Offer promotion for `Current'
		local
			a_result_expression: XM_XPATH_ATOMIZER_EXPRESSION
		do
			Result := an_offer.accept (Current)
			if Result = Void then
				a_result_expression := clone (Current)
				a_result_expression.set_base_expression (base_expression.promote (an_offer))
				Result := a_result_expression
			end
		end

feature -- Evaluation

	evaluate_item (a_context: XM_XPATH_CONTEXT) is
			-- Evaluate `Current' as a single item
		do
			todo ("evaluate_item", False)
		end

feature -- Element change

	set_base_expression (a_base_expression: XM_XPATH_EXPRESSION) is
			-- Set `base_expression.
		require
			base_expression_not_void: a_base_expression /= Void
		do
			base_expression := a_base_expression
		ensure
			base_expression_set: base_expression = a_base_expression
		end

feature {NONE} -- Implementation
	
	compute_cardinality is
			-- Compute cardinality.
		do
			-- TODO - this changes when we allow nodes to contain sequences
			clone_cardinality (base_expression)
		end

invariant

	base_expression_not_void: base_expression /= Void

end

	
