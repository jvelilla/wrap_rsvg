note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class GOBJECT_STRUCT_API

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

	g_type_instance: GTYPE_INSTANCE_STRUCT_API
			-- Access member `g_type_instance`
		require
			exists: exists
		do
			create Result.make_by_pointer ( c_g_type_instance(item) )
		ensure
			result_not_void: Result.item = c_g_type_instance (item) 
		end

	set_g_type_instance (a_value: GTYPE_INSTANCE_STRUCT_API) 
			-- Set member `g_type_instance`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_g_type_instance (item, a_value.item)
		ensure
			g_type_instance_set: g_type_instance.item = a_value.item
		end

	ref_count: INTEGER
			-- Access member `ref_count`
		require
			exists: exists
		do
			Result := c_ref_count (item)
		ensure
			result_correct: Result = c_ref_count (item)
		end

	set_ref_count (a_value: INTEGER) 
			-- Change the value of member `ref_count` to `a_value`.
		require
			exists: exists
		do
			set_c_ref_count (item, a_value)
		ensure
			ref_count_set: a_value = ref_count
		end

	qdata: detachable GDATA_STRUCT_API 
			-- Access member `qdata`
		require
			exists: exists
		do
			if attached c_qdata (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_qdata (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_qdata (item) 
		end

	set_qdata (a_value: GDATA_STRUCT_API) 
			-- Set member `qdata`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_qdata (item, a_value.item)
		ensure
			qdata_set: attached qdata as l_value implies l_value.item = a_value.item
		end

feature {NONE} -- Implementation wrapper for struct struct _GObject

	sizeof_external: INTEGER 
		external
			"C inline use <rsvg.h>"
		alias
			"sizeof(struct _GObject)"
		end

	c_g_type_instance (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				&((struct _GObject*)$an_item)->g_type_instance
			]"
		end

	set_c_g_type_instance (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GObject*)$an_item)->g_type_instance =  *(GTypeInstance*)$a_value
			]"
		end

	c_ref_count (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GObject*)$an_item)->ref_count
			]"
		end

	set_c_ref_count (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GObject*)$an_item)->ref_count =  (guint)$a_value
			]"
		ensure
			ref_count_set: a_value = c_ref_count (an_item)
		end

	c_qdata (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GObject*)$an_item)->qdata
			]"
		end

	set_c_qdata (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rsvg.h>"
		alias
			"[
				((struct _GObject*)$an_item)->qdata =  (GData*)$a_value
			]"
		ensure
			qdata_set: a_value = c_qdata (an_item)
		end

end
