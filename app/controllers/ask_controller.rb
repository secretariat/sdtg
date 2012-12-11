# -*- encoding : utf-8 -*-
class AskController < ApplicationController
	
	def new
		@askq	= Ask.new
	end
	
	def create
		@askq = Ask.new( params[:ask] )
		if @askq.save then
			AskMailer.ask_question( @askq ).deliver
			redirect_to(:controller => 'page', :action => 'index')
		end

	end

end
