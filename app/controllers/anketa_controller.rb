# -*- encoding : utf-8 -*-
class AnketaController < ApplicationController
	layout 'secondary'

  def new
  	@anketa = Anketa.new
  end

  def create
  	@anketa = Anketa.new( params[:anketa] )
  	if @anketa.save
  		flash[:notice] = "Опросник заполнен успешно."
  		# AnketaMailer.send_anketa( @anketa ).deliver
  		AnketaMailer.delay.send_anketa( @anketa )
  		redirect_to '/page/contacts'
  	else
  		flash[:notice] = "Опросник заполнен с ошибками."
  		redirect_to '/anketa/new'
  	end
  end
end
