indexing

	description:

	"Objects that implement the type checking of 'treat as':%
	%that is, return the supplied sequence, checking that all its items are of the correct type"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class XM_XPATH_ITEM_CHECKER

inherit

	XM_XPATH_UNARY_EXPRESSION
		redefine
			simplify, analyze, iterator, evaluate_item, item_type, same_expression
		end

	XM_XPATH_MAPPING_FUNCTION

creation

	make

feature {NONE} -- Initialization

	make (a_sequence: XM_XPATH_EXPRESSION; an_item_type: XM_XPATH_ITEM_TYPE; a_role_locator: XM_XPATH_ROLE_LOCATOR) is
			-- Establish invariant.
		require
				underlying_expression_not_void: a_sequence /= Void
				role_locator_not_void: a_role_locator /= Void
				item_type_not_void: an_item_type /= Void
		do
			make_unary (a_sequence)
			role_locator := a_role_locator
			required_item_type := an_item_type
			compute_static_properties
			adopt_child_expression (base_expression)
			initialize
		ensure
			base_expression_set: base_expression = a_sequence
			role_locator_set: role_locator = a_role_locator
			item_type_set: required_item_type = an_item_type
			static_properties_computed: are_static_properties_computed
		end

feature -- Access

	required_item_type: XM_XPATH_ITEM_TYPE
			-- The required type for items
	
	role_locator: XM_XPATH_ROLE_LOCATOR
			-- Role locator for error messages

	item_type: XM_XPATH_ITEM_TYPE is
			-- Determine the data type of the expression, if possible
		do
			Result := required_item_type
			if Result /= Void then
				-- Bug in SE 1.0 and 1.1: Make sure that
				-- that `Result' is not optimized away.
			end
		end

feature -- Comparison

	same_expression (other: XM_XPATH_EXPRESSION): BOOLEAN is
			-- Are `Current' and `other' the same expression?
		local
			other_checker: XM_XPATH_ITEM_CHECKER
		do
			other_checker ?= other
			if other_checker /= Void then
				Result := base_expression.same_expression (other_checker.base_expression) 
					and then other_checker.required_item_type = required_item_type
			end
		end

feature -- Optimization

	simplify is
			-- Perform context-independent static optimizations
		do
			base_expression.simplify
			if base_expression.was_expression_replaced then
				set_base_expression (base_expression.replacement_expression)
			end
			if required_item_type = any_item or else base_expression.is_error then
				set_replacement (base_expression)
			end
		end

	analyze (a_context: XM_XPATH_STATIC_CONTEXT) is
			-- Perform static analysis of `Current' and its subexpressions
		local
			a_relation: INTEGER
			a_message: STRING
		do
			mark_unreplaced
			base_expression.analyze (a_context)
			if base_expression.was_expression_replaced then
				set_base_expression (base_expression.replacement_expression)
			end
			if base_expression.is_error then
				set_last_error (base_expression.error_value)
			else
				a_relation := type_relationship (required_item_type, base_expression.item_type)
				if a_relation = Same_item_type or else a_relation = Subsuming_type then
					set_replacement (base_expression)
				elseif a_relation = Disjoint_types then
					a_message := "Required type of " + role_locator.message + " is "
					+ required_item_type.conventional_name + "; supplied value has type " + base_expression.item_type.conventional_name
					set_last_error_from_string (a_message, Xpath_errors_uri, "XP0004", Static_error)
				end
			end
		end

feature -- Evaluation

	evaluate_item (a_context: XM_XPATH_CONTEXT) is
			-- Evaluate `Current' as a single item
		do
			base_expression.evaluate_item (a_context)
			last_evaluated_item := base_expression.last_evaluated_item
			if last_evaluated_item = Void then
				do_nothing  -- can this occur?
			elseif last_evaluated_item.is_error then
				do_nothing
			else
				test_conformance (last_evaluated_item)
			end
		end

	iterator (a_context: XM_XPATH_CONTEXT): XM_XPATH_SEQUENCE_ITERATOR [XM_XPATH_ITEM] is
			-- Iterator over the values of a base_expression
		local
			an_iterator: XM_XPATH_SEQUENCE_ITERATOR [XM_XPATH_ITEM]
		do
			an_iterator := base_expression.iterator (a_context)
			if an_iterator.is_error then
				Result := an_iterator
			else
				create {XM_XPATH_MAPPING_ITERATOR} Result.make (an_iterator, Current, Void, Void)
			end
		end

	map (an_item: XM_XPATH_ITEM; a_context: XM_XPATH_CONTEXT; an_information_object: ANY): XM_XPATH_MAPPED_ITEM is
			-- Map `an_item' to a sequence
		do
			if not an_item.is_error then test_conformance (an_item) end
			create Result.make_item (an_item)
		end

feature {XM_XPATH_EXPRESSION} -- Restricted
	
	display_operator: STRING is
			-- Format `operator' for display
		do
			Result := "treat as " + required_item_type.conventional_name
		end

feature {NONE} -- Implementation

	test_conformance (an_item: XM_XPATH_ITEM) is
			-- Test conformance to `required_item_type'.
			-- Marks `an_item' as in error if check fails.
		require
			item_not_in_error: an_item /= Void and then not an_item.is_error 
		local
			a_message: STRING
		do
			if not required_item_type.matches_item (an_item) then
				a_message := STRING_.appended_string ("Required type of ", role_locator.message)
				a_message := STRING_.appended_string (a_message, " is ")
				a_message := STRING_.appended_string (a_message, required_item_type.conventional_name)
				a_message := STRING_.appended_string (a_message, "; supplied value is ")
				a_message := STRING_.appended_string (a_message, an_item.item_type.conventional_name)
				an_item.set_last_error_from_string (a_message, Xpath_errors_uri, "XP0006", Type_error)
			end
		end

invariant

	role_locator_not_void: role_locator /= void
	item_type_not_void: required_item_type /= Void

end

