# -*- encoding : utf-8 -*-
class AskController < ApplicationController
	
	def new
		@askq	= Ask.new
	end
	
	def create
		@askq = Ask.new( params[:ask] )
		if @askq.save then
			AskMailer.delay.ask_question( @askq )
			redirect_to(:controller => 'page', :action => 'index')
		end

	end

end
