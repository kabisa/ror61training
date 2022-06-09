# app/mailers/notifications_mailer.rb
class NotificationsMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.new_comment.subject
  #
  def new_comment
    @greeting = 'Hi'
    @comment = params[:comment]

    mail to: 'to@example.org'
  end
end
