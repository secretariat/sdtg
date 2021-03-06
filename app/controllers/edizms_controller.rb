# -*- encoding : utf-8 -*-
require 'funcs'
class EdizmsController < ApplicationController

  before_filter :confirm_logged_in

  layout 'admin'

  def index
    @edizms = Edizm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @edizms }
    end
  end

  def show
    @edizm = Edizm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @edizm }
    end
  end

  def new
    @edizm = Edizm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @edizm }
    end
  end

  def edit
    @edizm = Edizm.find(params[:id])
  end

  def create
    @edizm = Edizm.new(params[:edizm])

    respond_to do |format|
      if @edizm.save
        format.html { redirect_to @edizm, notice: 'Edizm was successfully created.' }
        format.json { render json: @edizm, status: :created, location: @edizm }
      else
        format.html { render action: "new" }
        format.json { render json: @edizm.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @edizm = Edizm.find(params[:id])

    respond_to do |format|
      if @edizm.update_attributes(params[:edizm])
        format.html { redirect_to @edizm, notice: 'Edizm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @edizm.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @edizm = Edizm.find(params[:id])
    @edizm.destroy

    respond_to do |format|
      format.html { redirect_to edizms_url }
      format.json { head :no_content }
    end
  end
end
