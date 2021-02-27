class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.dig(:mailjet, :yandex_admin_sender)

  layout 'mailer'
end
