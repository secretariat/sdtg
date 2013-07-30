# -*- encoding : utf-8 -*-

class TrController < ApplicationController
  before_filter :confirm_logged_in

  layout 'admin'
  
  def new
  	@tr = Tr.new
  end

  def create
  	@tr = Tr.new( params[:tr] )
  	if @tr.save then
  	flash[:notice] = "Таможенный режим создан успешно"
      redirect_to( :controller => 'tr', :action => 'list')
    else
      flash[:notice] = "#{@tr.errors.full_messages.to_sentence}" 
      redirect_to( :controller => 'tr', :action => 'new')
    end   
  end

  def list
  	@tr = Tr.find( :all )
  end

  def edit
    @tr = Tr.find( params[:id] )
  end

  def update
    @tr = Tr.find( params[:id] )
    if @tr.update_attributes( params[:tr]) then
      flash[:notice] = "Таможенный режим успешно отредактирован"
      redirect_to( :controller => 'tr', :action => 'list')
    else
      render('edit')
    end   
  end
end
