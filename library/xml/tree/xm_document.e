indexing

	description:

		"XML documents"

	library: "Gobo Eiffel XML Library"
	copyright: "Copyright (c) 2001, Andreas Leitner and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class XM_DOCUMENT

inherit

	XM_COMPOSITE
		redefine
			equality_tester,
			root_node
		end

	XM_LINKED_LIST [XM_DOCUMENT_NODE]
		rename
			make as make_list,
			is_first as list_is_first,
			is_last as list_is_last
		redefine
			equality_tester
		end
		
creation

	make,
	make_with_root_named

feature {NONE} -- Initialization
	
	make is
			-- Create root node.
		do
			make_with_root_named (Default_name, Default_ns)
		end

	make_with_root_named (a_name: STRING; a_ns: XM_NAMESPACE) is
			-- Create root node, with a root_element 
			-- with given name.
		require
			not_void: a_name /= Void
			not_empty: a_name.count > 0
		do
			create root_element.make (Current, a_name, a_ns)
			make_list
			force_last (root_element)
		ensure
			root_element_name_set: root_element.name = a_name
		end

	Default_name: STRING is "root"
	
feature -- List

	equality_tester: KL_EQUALITY_TESTER [XM_DOCUMENT_NODE]
	
feature {NONE} -- Parent processing

	before_addition (a_node: like last) is
			-- Remove node from original parent if not us.
		do
			if a_node /= Void then
					-- Remove from previous parent.
				if a_node.parent /= Void then
					a_node.parent.equality_delete (a_node)
				end
				a_node.node_set_parent (Current)
			end
		ensure then
			parent_accepted: a_node /= Void implies a_node.parent = Current
		end
		
feature {XM_NODE} -- Removal

	equality_delete (v: XM_NODE) is
			-- Call `delete' with Void equality tester.
		local
			a_cursor: DS_LINKED_LIST_CURSOR [XM_NODE]
		do
			-- we do DS_LIST.delete by hand, because 
			-- it takes a descendant type, while we don't 
			-- really need to know the subtype for object
			-- equality.
			from
				a_cursor := new_cursor
				a_cursor.start
			until
				a_cursor.after
			loop
				if a_cursor.item = v then
					a_cursor.remove
				else
					a_cursor.forth
				end
			end
		end
		
feature -- Access

	root_element: XM_ELEMENT
			-- Root element of current document

	root_node: XM_DOCUMENT is
			-- Root node.
		do
			Result := Current
		end
		
feature -- Setting

	set_root_element (an_element: like root_element) is
			-- Set root element.
		require
			an_element_not_void: an_element /= Void
		do
			remove_previous_root_element
			root_element := an_element
			force_last (an_element)
		ensure
			root_element_parent: root_element.parent = Current
			root_element_set: root_element = an_element
			last_set: last = root_element
		end

feature {NONE} -- Implementation

	remove_previous_root_element is
			-- Remove previous root element from composite:
		local
			a_cursor: like new_cursor 
		do
			from
				a_cursor := new_cursor
				a_cursor.start
			until
				a_cursor.after
			loop
				if a_cursor.item = root_element then
				   a_cursor.remove
				   a_cursor.go_after
				else
				   a_cursor.forth
				end
			end
		end
		
feature -- Access

	element_by_name (a_name: STRING): XM_ELEMENT is
			-- Direct child element with name `a_name';
			-- If there are more than one element with that name, anyone may be returned.
			-- Return Void if no element with that name is a child of current node.
		do
			if has_element_by_name (a_name) then
				Result := root_element
			end
		ensure then
			root_element: has_element_by_name (a_name) implies Result = root_element
		end
		
	element_by_qualified_name (a_uri: STRING; a_name: STRING): XM_ELEMENT is
			-- Root element, if name matches, Void otherwise.
		do
			if has_element_by_qualified_name (a_uri, a_name) then
				Result := root_element
			end
		ensure then
			root_element: has_element_by_qualified_name (a_uri, a_name) implies Result = root_element
		end
		
	has_element_by_name (a_name: STRING): BOOLEAN is
			-- Has current node at least one direct child
			-- element with the name `a_name'?
			-- (Namespace is ignored on the root node because the 
			-- root element defines the current namespace.)
		do
			Result := same_string (root_element.name, a_name)
		ensure then
			definition: Result = same_string (root_element.name, a_name)
		end
		
	has_element_by_qualified_name (a_uri: STRING; a_name: STRING): BOOLEAN is
			-- Is this the qualified name of the root element?
		do
			Result := root_element.has_qualified_name (a_uri, a_name)
		ensure then
			definition: Result = root_element.has_qualified_name (a_uri, a_name)
		end

feature -- Text

	join_text_nodes is
			-- Nothing to do in document.
		do
		end
		
feature -- Processing

	process (a_processor: XM_NODE_PROCESSOR) is
			-- Process current node with `a_processor'.
		do
			a_processor.process_document (Current)
		end

invariant
	
	root_element_not_void: root_element /= Void
	--single_element: elements.count = 1
	
end
