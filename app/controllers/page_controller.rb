# -*- encoding : utf-8 -*-
class PageController < ApplicationController

	def index
		session[:lang] = "ru" if session[:lang].nil?
	end

	def about
		render :layout => 'secondary'
	end

	def partners_login
		render :layout => 'application'
	end

	def faq
		@faqs = Faq.where( :lang => I18n.locale, :visible => true )
		render :layout => 'secondary'
	end

	def partners
		render :layout => 'secondary'
	end

	def map
		render :layout => 'secondary'
	end

	def services
		render :layout => 'secondary'
	end

	def singleg
		render :layout => 'secondary'
	end

	def multig
		render :layout => 'secondary'
	end

	def geng
		render :layout => 'secondary'
	end

	def presentation
		render :layout => 'secondary'
	end

	def become_partner
		render :layout => 'secondary'
	end

	def represent
		render :layout => 'secondary'
	end

	def dopinfo
		render :layout => 'secondary'
	end

	def customs_zak
		render :layout => 'secondary'
	end

	def cust_count
		render :layout => 'secondary'
	end

	def contacts
		@contacts = Contacts.where( :lang => I18n.locale )
		render :layout => 'secondary'
	end

	def zakon
		@zakon = Zakon.where( :lang => I18n.locale )
		render :layout => 'secondary'
	end

	def set_en
		session[:lang] = "en"
		redirect_to(request.env["HTTP_REFERER"])
	end

	def set_ru
		session[:lang] = "ru"
		redirect_to(request.env["HTTP_REFERER"])
	end
end
