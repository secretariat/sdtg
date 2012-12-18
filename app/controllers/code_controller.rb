# -*- encoding : utf-8 -*-

class CodeController < ApplicationController
  
  before_filter :confirm_logged_in

  layout 'admin'
  
  def new
  	@code = Code.new
  end

  def create
  	@code = Code.new( params[:code] )
  	if @code.save then
  	flash[:notice] = "Вопрос-ответ создан успешно"
      redirect_to( :controller => 'code', :action => 'list')
    else
      flash[:notice] = "#{@code.errors.full_messages.to_sentence}" 
      redirect_to( :controller => 'code', :action => 'new')
    end   
  end

  def list
  	@code = Code.find( :all )
  end

  def edit
    @code = Code.find( params[:id] )
  end

  def update
    @code = Code.find( params[:id] )
    if @code.update_attributes( params[:code]) then
      flash[:notice] = "Код товара успешно отредактирован"
      redirect_to( :controller => 'code', :action => 'list')
    else
      render('edit')
    end   
  end
end
