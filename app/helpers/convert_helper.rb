module ConvertHelper
	def get_edizm_str( value )
	  return (value.split(/-/).size > 0) ? value.split(/-/)[0] : value
	end
end