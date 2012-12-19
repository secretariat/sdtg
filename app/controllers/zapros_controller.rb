# -*- encoding : utf-8 -*-
class ZaprosController < ApplicationController
	
	def show

	end

	def new
		@zapros = Zapros.new
	end

	def create
		@zapros = Zapros.new( params[:zapros] )
		if @zapros.save then
			fname = @zapros.att_file_name
			fpath = @zapros.att.url
			ZaprosMailer.delay.send_zapros( @zapros, fpath, fname )
			# ZaprosMailer.send_zapros( @zapros ).deliver
			flash[:notice] = "Запрос отправлен успешно"
			redirect_to(:controller => 'page', :action => 'index')
		else
			flash[:notice] = "Ошибка при отправке Запроса"
			# redirect_to(:controller => 'user', :action => 'new')
		end 

	end

	def edit
		@zapros = Zapros.find( params[:id] )
	end

	def update
  
  end
end

