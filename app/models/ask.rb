# -*- encoding : utf-8 -*-
class Ask < ActiveRecord::Base
  attr_accessible :fio, :from, :question, :subj
end
