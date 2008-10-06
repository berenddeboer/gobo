indexing

	description:

		"Error: Rule cannot be matched"

	library: "Gobo Eiffel Lexical Library"
	copyright: "Copyright (c) 1999, Eric Bezault and others"
	license: "MIT License"
	date: "$Date$"
	revision: "$Revision$"

class LX_RULE_CANNOT_BE_MATCHED_ERROR

inherit

	UT_ERROR

create

	make

feature {NONE} -- Initialization

	make (filename: STRING; line: INTEGER) is
			-- Create a new error reporting that a rule
			-- cannot be matched.
		require
			filename_not_void: filename /= Void
		do
			create parameters.make (1, 2)
			parameters.put (filename, 1)
			parameters.put (line.out, 2)
		end

feature -- Access

	default_template: STRING is "Warning, %"$1%", line $2: rule cannot be matched"
			-- Default template used to built the error message

	code: STRING is "LX0030"
			-- Error code

invariant

--	dollar0: $0 = program name
--	dollar1: $1 = filename
--	dollar2: $2 = line number

end
