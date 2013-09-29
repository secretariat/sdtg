# -*- encoding : utf-8 -*-
class Zapros < ActiveRecord::Base
    has_attached_file :att

    has_many :products
    accepts_nested_attributes_for :products
    # , :reject_if => lambda { |a| a[:naim].blank? }, :allow_destroy => true
    attr_protected

    # attr_accessible :naim,
    # 				:code,
    # 				:tamrez,
    # 				:typetran,
    # 				:koltov,
    # 				:base_ed,
    # 				:dop_ed,
    # 				:stoim,
    # 				:ed,
    # 				:total,
    #                 :sum_cust_payment,
    # 				:path_ryhy,
    # 				:chastota,
    # 				:fio,
    # 				:rank,
    # 				:phone,
    # 				:email,
    # 			    :fpath,
    #                 :att,
    #                 :att_file_name,
    # 				:dopinfo,
    #                 :code_num,
    #                 :company_name,
    #                 :dog_num,
    #                 :dog_date,
    #                 :dop_ed_name,
    #                 :base_ed_name,
    #                 :another_currency,
    #                 :code_edr

    # validates_presence_of :code_num, :message => "Поле не может быть пустым"
    # validates_presence_of :email, :message => "Поле не может быть пустым"
    # validates_presence_of :fio, :message => "Поле не может быть пустым"
    # validates_presence_of :rank, :message => "Поле не может быть пустым"
    # validates_presence_of :phone, :message => "Поле не может быть пустым"
    # validates_presence_of :koltov, :message => "Поле не может быть пустым"
    validates_presence_of :code_edr, :message => "Поле не может быть пустым"
end
