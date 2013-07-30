# -*- encoding : utf-8 -*-
class Zakon < ActiveRecord::Base
  attr_accessible :link, :name, :lang, :visible
end
