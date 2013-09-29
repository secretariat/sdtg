# -*- encoding : utf-8 -*-
class Product < ActiveRecord::Base
  belongs_to :zapros

  attr_accessible :zapros_id,
    							:naim,
    							:code_num,
    							:code,
    							:koltov,
    							:base_ed,
    							:dop_ed,
    							:dop_ed_name,
    							:stoim,
    							:ed,
    							:total,
      						:sum_cust_payment,
      						:another_currency

  # validates_presence_of :naim, :message => "Поле не может быть пустым"
  # validates_presence_of :code_num, :message => "Поле не может быть пустым"
  # validates_presence_of :koltov, :message => "Поле не может быть пустым"
end
