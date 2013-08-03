# -*- encoding : utf-8 -*-

class CurrencyController < ApplicationController
	before_filter :confirm_logged_in

  layout 'admin'

  def new
  	@currency = Currency.new
  end

  def create
  	@currency = Currency.new( params[:currency] )
  	if @currency.save then
  	flash[:notice] = "Таможенный режим создан успешно"
      redirect_to( :controller => 'currency', :action => 'list')
    else
      flash[:notice] = "#{@currency.errors.full_messages.to_sentence}"
      redirect_to( :controller => 'currency', :action => 'new')
    end
  end

  def list
  	@currency = Currency.find( :all )
  end

  def edit
    @currency = Currency.find( params[:id] )
  end

  def update
    @currency = Currency.find( params[:id] )
    if @currency.update_attributes( params[:currency]) then
      flash[:notice] = "Таможенный режим успешно отредактирован"
      redirect_to( :controller => 'currency', :action => 'list')
    else
      render('edit')
    end
  end
end
