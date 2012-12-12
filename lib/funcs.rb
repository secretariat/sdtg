
def status( value)
	if value == true
		str = "<b>+</b>".html_safe
	else
		str = "<b>-</b>".html_safe
	end
end
