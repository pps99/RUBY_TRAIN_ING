class SendMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_mailer.send_created.subject
  #
  def send_created(email,current_user)
      @sql = "select title,description,status from posts where (posts.user_id = #{current_user});"
      @greeting = ActiveRecord::Base.connection.execute(@sql).to_a
      mail to: email
  end
end
