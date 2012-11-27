# -*- encoding : utf-8 -*-
class PageController < ApplicationController
	def index
	end
	
	def about
		render :layout => 'secondary'

	end
end
