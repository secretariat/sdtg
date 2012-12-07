# -*- encoding : utf-8 -*-
class ZaprosMailer < ActionMailer::Base
  default to: "mixey.viti@bigmir.net"

  # default from: "mixey.viti@gmail.com"


  def send_zapros( zapros, fpath, fname )
    pdf = ZaprosPdf.new( zapros )
    if( fname != nil ) then 
    	att_name = Rails.root.join("public#{fpath}")
    	fd = File.new( att_name, "r+b" )
    	fcontent = fd.read
      attachments[fname] = { :content => fcontent }
    end

    attachments["zapros_#{zapros.id}.pdf"] = { type: "application/pdf", :content => pdf.render }
    
    @zapros = zapros
    mail(:from => @zapros.email, :subject =>"Запрос на определение стоимости финансовой гарантии")
   	if( fd ) then
      fd.close
    end
  end

end
