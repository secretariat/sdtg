# -*- encoding : utf-8 -*-
class ZaprosController < ApplicationController

	def show

	end

	def new
		@code = Code.where( :lang => session[:lang] )
		@tr = Tr.where( :lang => session[:lang] )
		@transp = Transp.where( :lang => session[:lang] )
		@edizms = Edizm.where( :lang => session[:lang] )

		@zapros = Zapros.new
		1.times do
			@zapros.products.build
		end

	end

	def create
		@zapros = Zapros.new( params[:zapros] )
		if @zapros.save then
			puts "================++>SUCCESS"
			sleep 3
			email_to = @zapros.dog_num.blank? ? "garant@dtg.kiev.ua" : "support@dtg.kiev.ua"
			fname = @zapros.att_file_name
			fpath = @zapros.att.url
			ZaprosMailer.delay.send_zapros( @zapros, fpath, fname, email_to )
			# ZaprosMailer.send_zapros( @zapros, fpath, fname, email_to ).deliver
			flash[:notice] = "Запрос отправлен успешно"
			redirect_to(:controller => 'page', :action => 'index')
		else
			flash[:notice] = "Ошибка при отправке Запроса"
			redirect_to(:controller => 'zapros', :action => 'new')
		end

	end

	def edit
		@zapros = Zapros.find( params[:id] )
	end

	def update

  end
end

