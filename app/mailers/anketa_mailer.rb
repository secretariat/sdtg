# -*- encoding : utf-8 -*-
class AnketaMailer < ActionMailer::Base
  default from: "site@dtg.kiev.ua"
  default to: "garant@dtg.kiev.ua"

  def send_anketa( anketa )
    @anketa = anketa
    mail( :subject => "Анкета опросник от #{@anketa.pib}" )
  end

end
