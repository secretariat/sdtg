# -*- encoding : utf-8 -*-
class ZaprosMailer < ActionMailer::Base
  default to: "mixey.viti@gmail.com"
  # default to: "garant@dtg.kiev.ua"
  # default from: "mixey.viti@gmail.com"

  def send_zapros( zapros, fpath,fname )
  	att_name = Rails.root.join("public#{fpath}")
  	fd = File.new( att_name, "r+b" )
  	fcontent = fd.read
    attachments[fname] = { :content => fcontent }
    @zapros = zapros
    mail(:from => @zapros.email, :subject =>"Запрос на определение стоимости финансовой гарантии")
   	fd.close
  end

end
