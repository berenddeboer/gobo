indexing

	description:

		"Eiffel actual arguments"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2004, Eric Bezault and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

deferred class ET_ACTUAL_ARGUMENTS

feature -- Status report

	is_one_argument: BOOLEAN is
			-- Is there exactly one argument?
		do
			Result := (count = 1)
		ensure
			definition: Result = (count = 1)
		end

	is_empty: BOOLEAN is
			-- Is there no actual argument?
		do
			Result := (count = 0)
		ensure
			definition: Result = (count = 0)
		end

feature -- Access

	actual_argument (i: INTEGER): ET_EXPRESSION is
			-- Actual argument at index `i'
		require
			i_large_enough: i >= 1
			i_small_enough: i <= count
		deferred
		ensure
			actual_argument_not_void: Result /= Void
		end

feature -- Measurement

	count: INTEGER is
			-- Number of actual arguments
		deferred
		ensure
			count_non_negative: Result >= 0
		end

end
