# -*- encoding : utf-8 -*-
class Zapros < ActiveRecord::Base
    has_attached_file :att

    attr_accessible :naim,
    				:code,
    				:tamrez,
    				:typetran,
    				:koltov,
    				:base_ed,
    				:dop_ed,
    				:stoim,
    				:ed,
    				:total,
                    :sum_cust_payment,
    				:path_ryhy,
    				:chastota,
    				:fio,
    				:rank,
    				:phone,
    				:email,
    			    :fpath,
                    :att,
                    :att_file_name,
    				:dopinfo,
                    :code_num,
                    :company_name,
                    :dog_num,
                    :dog_date
    end
