class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.dig(:mailjet, :mail_sender)

  layout 'mailer'
end
