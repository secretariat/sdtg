# -*- encoding : utf-8 -*-
class Faq < ActiveRecord::Base
  attr_accessible :answer, :quest, :lang, :visible
end
