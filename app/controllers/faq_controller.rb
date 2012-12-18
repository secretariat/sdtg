# -*- encoding : utf-8 -*-
require 'funcs'
class FaqController < ApplicationController
  before_filter :confirm_logged_in
  
  layout 'admin'
  
  def new
  	@faq = Faq.new
  end

  def create
  	@faq = Faq.new( params[:faq] )
  	if @faq.save then
  	flash[:notice] = "Вопрос-ответ создан успешно"
      redirect_to( :controller => 'faq', :action => 'list')
    else
      flash[:notice] = "#{@faq.errors.full_messages.to_sentence}" 
      redirect_to( :controller => 'faq', :action => 'new')
    end   
  end

  def show
    @faq = Faq.find( params[:id] )
  end

  def list
  	@faq = Faq.find( :all )
  end

  def edit
    @faq = Faq.find( params[:id] )
  end

  def update
    @faq = Faq.find( params[:id] )
    if @faq.update_attributes( params[:faq]) then
      flash[:notice] = "Вопрос-ответ успешно отредактирован"
      redirect_to( :controller => 'faq', :action => 'list')
    else
      render('edit')
    end   
  end

  def destroy
    Faq.find( params[:id] ).destroy
    flash[:notice] = "Запись удачно удалена"
    redirect_to(:action => 'list')
  end

end
