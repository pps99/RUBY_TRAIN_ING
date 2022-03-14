class LoginMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.login_mailer.login_created.subject
  #
  def login_created(user)
    @greeting = "You Have Successfully Login"

    mail to: user.email
  end
end
