# -*- encoding : utf-8 -*-
class Contacts < ActiveRecord::Base
  attr_accessible :email1, :visible, :email2, :fio, :phone_g1, :phone_g2, :mobile1, :mobile2, :rank, :skype, :unit
end
