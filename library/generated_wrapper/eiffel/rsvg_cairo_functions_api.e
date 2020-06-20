note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class RSVG_CAIRO_FUNCTIONS_API


feature -- Access

	rsvg_handle_render_cairo (handle: RSVG_HANDLE_STRUCT_API; cr: CAIRO_STRUCT_API): INTEGER 
		do
			Result := c_rsvg_handle_render_cairo (handle.item, cr.item)
		ensure
			instance_free: class
		end

	rsvg_handle_render_cairo_sub (handle: RSVG_HANDLE_STRUCT_API; cr: CAIRO_STRUCT_API; id: STRING_8): INTEGER 
		local
			id_c_string: C_STRING
		do
			create id_c_string.make (id)
			Result := c_rsvg_handle_render_cairo_sub (handle.item, cr.item, id_c_string.item)
		ensure
			instance_free: class
		end

feature -- Externals

	c_rsvg_handle_render_cairo (handle: POINTER; cr: POINTER): INTEGER
		external
			"C inline use <rsvg.h>"
		alias
			"[
				return rsvg_handle_render_cairo ((RsvgHandle*)$handle, (cairo_t*)$cr);
			]"
		end

	c_rsvg_handle_render_cairo_sub (handle: POINTER; cr: POINTER; id: POINTER): INTEGER
		external
			"C inline use <rsvg.h>"
		alias
			"[
				return rsvg_handle_render_cairo_sub ((RsvgHandle*)$handle, (cairo_t*)$cr, (char const*)$id);
			]"
		end

feature -- Externals Address

end