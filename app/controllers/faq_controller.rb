# -*- encoding : utf-8 -*-
require 'funcs'
class FaqController < ApplicationController
  
  layout 'admin'
  
  def new
  	@faq = Faq.new
  end

  def create
  	@faq = Faq.new( params[:faq] )
  	if @faq.save then
  	flash[:notice] = "Вопрос-ответ создан успешно"
      # DtgMailer.delay.welcome_email( @main, @main.admin, @pass )
      redirect_to( :controller => 'faq', :action => 'list')
    else
      flash[:notice] = "##{@faq.errors.full_messages.to_sentence}" 
      redirect_to( :controller => 'faq', :action => 'new')
    end   
  end

  def show
  end

  def list
  	@faqs = Faq.find( :all )
  end

  def edit
  end
end
