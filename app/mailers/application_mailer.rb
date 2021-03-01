class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.dig(:mailjet, :yandex_hi_sender)

  layout 'mailer'
end
