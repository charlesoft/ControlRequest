class UserMailer < ActionMailer::Base
  default from: "charles@softlineinformatica.com.br"

  def welcome_email user
  	@user = user
  	@url = 'http://localhots:3000/login'
  	mail(:to => @user.email, :subject => 'Welcome to My Awesome Site')
  end

end
