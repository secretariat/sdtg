# -*- encoding : utf-8 -*-
class ZaprosController < ApplicationController
	
	def show
		# @zapros = zapros.find( params[:id] )
		# @user = User.find( session[:uid] )
		# @zcount = @zapros.usercount
		# @products = @zapros.products
		# respond_to do |format|
  #     format.html
  #     format.pdf do
  #       pdf = zaprosPdf.new(@zapros, @products, @user)
  #       send_data pdf.render, filename: "#{@zapros.id}.pdf",
  #                             type: "application/pdf",
  #                             disposition: "inline"
  #     end
  #   end
	end

	def new
		@zapros = Zapros.new
	end

	def create
		@zapros = Zapros.new( params[:zapros] )
		if @zapros.save then
			flash[:notice] = "Заявка создана успешно"
			# redirect_to( :controller => 'user', :action => 'index')
		else
			flash[:notice] = "Ошибка при создании Заявки"
			redirect_to(:controller => 'user', :action => 'new')
		end 

	end

	def edit
		@zapros = Zapros.find( params[:id] )
	end

	def update
  # 	@zapros = zapros.find( params[:id] )
  # 	@user = User.find( session[:uid] )
  # 	@zcount = @zapros.usercount
		# if @zapros.update_attributes( params[:zapros]) then
		# 	if( params[:send_button] ) then 
		# 		@zapros.update_attributes( :status => 2)
		# 		@products = @zapros.products
		# 		@chmail = Chmail.find( :last )
		# 		# XmlMailer.delay.xml_email( @chmail, @zapros, @products )
		# 		XmlMailer.xml_email( @chmail, @user, @zapros, @products ).deliver
		# 	end
		# 	flash[:notice] = "Заявка успешно отредактирована"
		# 	redirect_to( :controller => 'user', :action => 'index')
		# else
		# 	render('edit')
		# end  	
  end
end

