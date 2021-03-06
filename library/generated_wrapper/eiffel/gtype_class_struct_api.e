note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GTYPE_CLASS_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	g_type: INTEGER
			-- Access member `g_type`
		require
			exists: exists
		do
			Result := c_g_type (item)
		ensure
			result_correct: Result = c_g_type (item)
		end

	set_g_type (a_value: INTEGER) 
			-- Change the value of member `g_type` to `a_value`.
		require
			exists: exists
		do
			set_c_g_type (item, a_value)
		ensure
			g_type_set: a_value = g_type
		end

feature {NONE} -- Implementation wrapper for struct struct _GTypeClass

	sizeof_external: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"sizeof(struct _GTypeClass)"
		end

	c_g_type (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GTypeClass*)$an_item)->g_type
			]"
		end

	set_c_g_type (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GTypeClass*)$an_item)->g_type =  (GType)$a_value
			]"
		ensure
			g_type_set: a_value = c_g_type (an_item)
		end

end
