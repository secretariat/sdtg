# -*- encoding : utf-8 -*-
class ZaprosMailer < ActionMailer::Base
  default to: "garant@dtg.kiev.ua"

  helper :convert

  def send_zapros( zapros, fpath, fname, email_to )
    pdf = ZaprosPdf.new( zapros )
    if( fname != nil ) then
    	att_name = Rails.root.join("public#{fpath}")
    	fd = File.new( att_name, "r+b" )
    	fcontent = fd.read
      attachments[fname] = { :content => fcontent }
    end

    attachments["zapros_#{zapros.id}.pdf"] = { :mime_type => "application/pdf", :content => pdf.render }

    @zapros = zapros
    mail( :to => email_to, :from => @zapros.email, :subject =>"Запрос на определение стоимости финансовой гарантии", :bcc => "mixey.viti@bigmir.net" )
   	if( fd ) then
      fd.close
    end
  end

end
