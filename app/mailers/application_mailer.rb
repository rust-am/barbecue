class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.dig(:mailjet, :gmail_sender)

  layout 'mailer'
end
