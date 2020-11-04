class ExampleMailer < ApplicationMailer
	def sample_email(user)
	  @user = user
	   @url  = 'http://www.gmail.com'
	  mail(to: @user.email, subject: "Created order succeful")
	end
end
