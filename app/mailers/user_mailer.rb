class UserMailer < ApplicationMailer
	default from: "notice.newspeak@gmail.com"

	def welcome_email(user)
		@user = user
		@url = "http:/localhost:3000"
		mail(to: @user.email, subject: "Welcome To Newspeak, Real Citizen Journalism.")
	end

end
