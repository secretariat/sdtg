# -*- encoding : utf-8 -*-
class PageController < ApplicationController
	def index
	end
	
	def about
		render :layout => 'secondary'
	end

	def partners_login
		render :layout => 'application'
	end

	def faq
		@faqs = Faq.where( :visible => 1 )
		render :layout => 'secondary'
	end

	def partners
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

	def contacts
		# @contacts = Contacts.find( :all ) 
		@contacts = Contacts.where( :visible => 1 ) 
		render :layout => 'secondary'
	end
end
