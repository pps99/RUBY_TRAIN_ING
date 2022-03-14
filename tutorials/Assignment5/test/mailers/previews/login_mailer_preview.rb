# Preview all emails at http://localhost:3000/rails/mailers/login_mailer
class LoginMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/login_mailer/login_created
  def login_created
    LoginMailer.login_created
  end

end
