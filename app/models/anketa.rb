# -*- encoding : utf-8 -*-
class Anketa < ActiveRecord::Base
  attr_accessible :contacts, :pib, :quest_1, :quest_2, :quest_3, :quest_4, :quest_5, :uaddr, :wishes
end
