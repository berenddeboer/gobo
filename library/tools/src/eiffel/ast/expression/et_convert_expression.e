note

	description:

		"Eiffel conversion expressions"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2003-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date$"
	revision: "$Revision$"

deferred class ET_CONVERT_EXPRESSION

inherit

	ET_EXPRESSION
		redefine
			is_instance_free
		end

feature -- Access

	expression: ET_EXPRESSION
			-- Expression to be converted

	convert_feature: ET_CONVERT_FEATURE
			-- Conversion feature

	position: ET_POSITION
			-- Position of first character of
			-- current node in source code
		do
			Result := expression.position
		end

	first_leaf: ET_AST_LEAF
			-- First leaf node in current node
		do
			Result := expression.first_leaf
		end

	last_leaf: ET_AST_LEAF
			-- Last leaf node in current node
		do
			Result := expression.last_leaf
		end

feature -- Status report

	is_instance_free: BOOLEAN
			-- Does current expression not depend on 'Current' or its attributes?
			-- Note that we do not consider unqualified calls and Precursors as
			-- instance-free because it's not always possible syntactically
			-- to determine whether the feature being called is a class feature
			-- or not.
		do
			Result := expression.is_instance_free
		end

invariant

	expression_not_void: expression /= Void
	convert_feature_not_void: convert_feature /= Void

end
