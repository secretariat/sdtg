# -*- encoding : utf-8 -*-
class Ask < ActiveRecord::Base
  attr_accessible :fio, :from, :question, :subj

  validates_format_of :from, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => ": непрваильный формат email"
end
