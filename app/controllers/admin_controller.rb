# -*- encoding : utf-8 -*-
class AdminController < ApplicationController
  
  layout 'admin'  

  # before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  # before_filter :confirm_priveleges_admin, :except => [:login, :attempt_login, :logout]

  def attempt_login
    authorized_user = Admin.authenticate(params[:login], params[:hash_pass])
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:login] = authorized_user.login
      session[:priv] = authorized_user.priv_level
      flash[:notice] = "You are now logged in."
      case authorized_user.priv_level
        when 1 then redirect_to( :controller => 'admin', :action => 'main')
        # when 2 then redirect_to( :controller => 'manager', :action => 'index')
        # when 3 then redirect_to( :controller => 'user', :action => 'index')
        else redirect_to( :action => 'login')
      end


    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to( :action => 'login')
    end
    
  end

  def login
    render :layout => 'main'
  end

  def logout
    session[:user_id] = nil
    session[:login] = nil
    flash[:notice] = "You have been logged out."
    redirect_to(:action => "login")
  end

  def main

  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new( params[:admin] )
    @admin.priv_level = 1
    if @admin.save then
      flash[:notice] = "Администратор создан успешно"
      # DtgMailer.delay.welcome_email( @main, @main.admin, @pass )
      redirect_to( :controller => 'admin', :action => 'main')
    else
      flash[:notice] = "##{@admin.errors.full_messages.to_sentence}" 
      redirect_to( :controller => 'admin', :action => 'new')
    end   
  end

  def destroy
  end
end
