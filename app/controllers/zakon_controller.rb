# -*- encoding : utf-8 -*-
class ZakonController < ApplicationController
  before_filter :confirm_logged_in

  layout 'admin'

  def new
  	@zakon = Zakon.new
  end

  def create
  	@zakon = Zakon.new( params[:zakon] )
  	if @zakon.save then
  	flash[:notice] = "Таможенный режим создан успешно"
      redirect_to( :controller => 'zakon', :action => 'list')
    else
      flash[:notice] = "#{@zakon.errors.full_messages.to_sentence}"
      redirect_to( :controller => 'zakon', :action => 'new')
    end
  end

  def list
  	@zakon = Zakon.find( :all )
  end

  def edit
    @zakon = Zakon.find( params[:id] )
  end

  def update
    @zakon = Zakon.find( params[:id] )
    if @zakon.update_attributes( params[:zakon]) then
      flash[:notice] = "Таможенный режим успешно отредактирован"
      redirect_to( :controller => 'zakon', :action => 'list')
    else
      render('edit')
    end
  end
end
