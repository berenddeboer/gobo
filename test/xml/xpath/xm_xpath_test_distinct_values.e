indexing

	description:

		"Test XPath distinct-values() function."

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2005, Colin Adams and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

deferred class XM_XPATH_TEST_DISTINCT_VALUES

inherit

	TS_TEST_CASE
		redefine
			set_up
		end

	XM_XPATH_TYPE
	
	XM_XPATH_ERROR_TYPES

	XM_XPATH_SHARED_CONFORMANCE

	KL_IMPORTED_STRING_ROUTINES

	KL_SHARED_STANDARD_FILES

	MA_DECIMAL_MATH

feature -- Results

	two: MA_DECIMAL is
			-- 2.0
		once
			create Result.make_from_integer (2)
		ensure
			two_not_void: Result /= Void
		end

	three: MA_DECIMAL is
			-- 3.0
		once
			create Result.make_from_integer (3)
		ensure
			three_not_void: Result /= Void
		end

feature -- Tests

	test_distinct_values_one is
			-- Test fn:distinct-values((1, 2.0, 3, 2)) might return (1, 2.0, 3).
		local
			an_evaluator: XM_XPATH_EVALUATOR
			evaluated_items: DS_LINKED_LIST [XM_XPATH_ITEM]
			an_integer_value: XM_XPATH_INTEGER_VALUE
			a_decimal_value: XM_XPATH_DECIMAL_VALUE
		do
			create an_evaluator.make (18, False)
			an_evaluator.set_string_mode_ascii
			an_evaluator.build_static_context ("./data/languages.xml", False, False, False, True)
			assert ("Build successfull", not an_evaluator.was_build_error)
			an_evaluator.evaluate ("distinct-values((1, 2.0, 3, 2))")
			assert ("No evaluation error", not an_evaluator.is_error)
			evaluated_items := an_evaluator.evaluated_items
			assert ("Three distinct values", evaluated_items /= Void and then evaluated_items.count = 3)
			an_integer_value ?= evaluated_items.item (1)
			assert ("First value is integer", an_integer_value /= Void)
			assert ("First value is one", an_integer_value.value.is_equal (one))
			a_decimal_value ?= evaluated_items.item (2)
			assert ("Second value is decimal", a_decimal_value /= Void)
			assert ("Second value is two", a_decimal_value.value.is_equal (two))
			an_integer_value ?= evaluated_items.item (3)
			assert ("Third value is integer", an_integer_value /= Void)
			assert ("Third value is three", an_integer_value.value.is_equal (three))
		end

	set_up is
		do
			conformance.set_basic_xslt_processor
		end

end

			