class EventMailer < ApplicationMailer

  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event

    mail to: event.user.email, subject: "Новая подписка на #{event.title}"
  end

    def comment(event, comment, email)
      @comment = comment
      @event = event

      mail to: event.user.email, subject: "Новый комментарий @ #{event.title}"
    end

  def photo(event, photo, email)
    @event = event
    @photo = photo

    mail to: event.user.email, subject: "Новая фотография @ #{event.title}"
  end
end