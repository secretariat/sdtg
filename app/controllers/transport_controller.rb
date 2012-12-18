# -*- encoding : utf-8 -*-

class TransportController < ApplicationController
  layout 'admin'
  
  # before_filter :confirm_logged_in
  
  def new
  	@transport = Tr.new
  end

  def create
  	@transport = Transp.new( params[:tr] )
  	if @transport.save then
  	flash[:notice] = "Таможенный режим создан успешно"
      redirect_to( :controller => 'transport', :action => 'list')
    else
      flash[:notice] = "#{@transport.errors.full_messages.to_sentence}" 
      redirect_to( :controller => 'transport', :action => 'new')
    end   
  end

  def list
  	@transport = Transp.find( :all )
  end

  def edit
    @transport = Transp.find( params[:id] )
  end

  def update
    @transport = Transp.find( params[:id] )
    if @transport.update_attributes( params[:transp]) then
      flash[:notice] = "Таможенный режим успешно отредактирован"
      redirect_to( :controller => 'transport', :action => 'list')
    else
      render('edit')
    end   
  end
end
