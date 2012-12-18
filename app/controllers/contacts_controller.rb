# -*- encoding : utf-8 -*-
class ContactsController < ApplicationController
  # before_filter :confirm_logged_in
  
  layout 'admin'

  def index
    
  end

  def new
    @contact = Contacts.new
  end

  def create
    @contact = Contacts.new( params[:contacts] )
    if @contact.save then
    flash[:notice] = "Контакт  создан успешно"
      redirect_to( :controller => 'contacts', :action => 'list')
    else
      flash[:notice] = "#{@contacts.errors.full_messages.to_sentence}" 
      redirect_to( :controller => 'contacts', :action => 'new')
    end   
  end

  def show
    @contact = Contacts.find( params[:id] )
  end

  def list
    @contact = Contacts.find( :all )
  end

  def edit
    @contact = Contacts.find( params[:id] )
  end

  def update
    @contact = Contacts.find( params[:id] )
    if @contact.update_attributes( params[:contacts]) then
      flash[:notice] = "Вопрос-ответ успешно отредактирован"
      redirect_to( :controller => 'contacts', :action => 'list')
    else
      render('edit')
    end   
  end

  def destroy
    contact.find( params[:id] ).destroy
    flash[:notice] = "Запись удачно удалена"
    redirect_to(:action => 'list')
  end

end
