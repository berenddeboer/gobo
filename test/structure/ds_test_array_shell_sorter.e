indexing

	description:

		"Test features of class DS_ARRAY_SHELL_SORTER"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 2001, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

deferred class DS_TEST_ARRAY_SHELL_SORTER

inherit

	TS_TEST_CASE

feature -- Test

	test_make is
			-- Test feature `make'.
		local
			a_comparator: KL_COMPARABLE_COMPARATOR [INTEGER]
			a_sorter: DS_ARRAY_SHELL_SORTER [INTEGER]
		do
			!! a_comparator.make
			assert ("a_comparator_not_void", a_comparator /= Void)
			!! a_sorter.make (a_comparator)
			assert ("a_sorter_not_void", a_sorter /= Void)
			assert_same ("comparator_set", a_comparator, a_sorter.comparator)
		end

	test_sorted is
			-- Test feature `sorted'.
		local
			a_comparator: KL_COMPARABLE_COMPARATOR [INTEGER]
			a_sorter: DS_ARRAY_SHELL_SORTER [INTEGER]
			empty: ARRAY [INTEGER]
		do
			!! empty.make (1, 0)
			!! a_comparator.make
			!! a_sorter.make (a_comparator)
			assert ("sorted1", a_sorter.sorted (empty))
			assert ("sorted2", a_sorter.sorted (<<1, 2, 3, 4, 5>>))
			assert ("not_sorted1", not a_sorter.sorted (<<1, 3, 5, 4, 2>>))
			assert ("not_sorted2", not a_sorter.sorted (<<4, 3, 2, 1>>))
		end

	test_reverse_sorted is
			-- Test feature `reverse_sorted'.
		local
			a_comparator: KL_COMPARABLE_COMPARATOR [INTEGER]
			a_sorter: DS_ARRAY_SHELL_SORTER [INTEGER]
			empty: ARRAY [INTEGER]
		do
			!! empty.make (1, 0)
			!! a_comparator.make
			!! a_sorter.make (a_comparator)
			assert ("reverse_sorted1", a_sorter.reverse_sorted (empty))
			assert ("not_reverse_sorted1", not a_sorter.reverse_sorted (<<1, 2, 3, 4, 5>>))
			assert ("not_reverse_sorted2", not a_sorter.reverse_sorted (<<1, 3, 5, 4, 2>>))
			assert ("reverse_sorted2", a_sorter.reverse_sorted (<<4, 3, 2, 1>>))
		end

	test_sort is
			-- Test feature `sort'.
		local
			a_comparator: KL_COMPARABLE_COMPARATOR [INTEGER]
			a_sorter: DS_ARRAY_SHELL_SORTER [INTEGER]
			empty: ARRAY [INTEGER]
			an_array: ARRAY [INTEGER]
		do
			!! empty.make (1, 0)
			!! a_comparator.make
			!! a_sorter.make (a_comparator)
				-- Sort empty array:
			assert ("sorted1", a_sorter.sorted (empty))
			a_sorter.sort (empty)
			assert ("sorted2", a_sorter.sorted (empty))
				-- Sort already sorted array:
			an_array := <<1, 2, 3, 4, 5, 6>>
			assert ("sorted3", a_sorter.sorted (an_array))
			a_sorter.sort (an_array)
			assert ("sorted4", a_sorter.sorted (an_array))
			assert_iarrays_same ("items1", <<1, 2, 3, 4, 5, 6>>, an_array)
				-- Sort unsorted array:
			an_array := <<1, 3, 5, 4, 2>>
			assert ("not_sorted1", not a_sorter.sorted (an_array))
			a_sorter.sort (an_array)
			assert ("sorted5", a_sorter.sorted (an_array))
			assert_iarrays_same ("items2", <<1, 2, 3, 4, 5>>, an_array)
				-- Sort reverse sorted array:
			an_array := <<4, 3, 2, 1>>
			assert ("not_sorted2", not a_sorter.sorted (an_array))
			a_sorter.sort (an_array)
			assert ("sorted6", a_sorter.sorted (an_array))
			assert_iarrays_same ("items3", <<1, 2, 3, 4>>, an_array)
		end

	test_reverse_sort is
			-- Test feature `reverse_sort'.
		local
			a_comparator: KL_COMPARABLE_COMPARATOR [INTEGER]
			a_sorter: DS_ARRAY_SHELL_SORTER [INTEGER]
			empty: ARRAY [INTEGER]
			an_array: ARRAY [INTEGER]
		do
			!! empty.make (1, 0)
			!! a_comparator.make
			!! a_sorter.make (a_comparator)
				-- Reverse sort empty array:
			assert ("reverse_sorted1", a_sorter.reverse_sorted (empty))
			a_sorter.reverse_sort (empty)
			assert ("reverse_sorted2", a_sorter.reverse_sorted (empty))
				-- Reverse sort sorted array:
			an_array := <<1, 2, 3, 4, 5, 6>>
			assert ("not_reverse_sorted1", not a_sorter.reverse_sorted (an_array))
			a_sorter.reverse_sort (an_array)
			assert ("reverse_sorted3", a_sorter.reverse_sorted (an_array))
			assert_iarrays_same ("items1", <<6, 5, 4, 3, 2, 1>>, an_array)
				-- Reverse sort unsorted array:
			an_array := <<1, 3, 5, 4, 2>>
			assert ("not_reverse_sorted2", not a_sorter.reverse_sorted (an_array))
			a_sorter.reverse_sort (an_array)
			assert ("reverse_sorted4", a_sorter.reverse_sorted (an_array))
			assert_iarrays_same ("items2", <<5, 4, 3, 2, 1>>, an_array)
				-- Reverse sort already reverse sorted array:
			an_array := <<4, 3, 2, 1>>
			assert ("reverse_sorted5", a_sorter.reverse_sorted (an_array))
			a_sorter.reverse_sort (an_array)
			assert ("reverse_sorted6", a_sorter.reverse_sorted (an_array))
			assert_iarrays_same ("items3", <<4, 3, 2, 1>>, an_array)
		end

end
