class AskMailer < ActionMailer::Base
  # default to: "garant@dtg.kiev.ua"
  default to: "mixey.viti@bigmir.net"

  def ask_question( askq )
  	@askq = askq
	  mail( :from => @askq.from, :subject => @askq.subj )
  end
end
