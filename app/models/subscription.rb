class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  # validates :event, presence: true
  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/, unless: -> { user.present? }
  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }
  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }

  validate :self_event_subscription
  validate :registered_email_validation, unless: -> { user.present? }

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  # переопределяем метод, если есть юзер, выдаем его email,
  # если нет -- дергаем исходный переопределенный метод
  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  private

  # запрет подписки на свое событие
  def self_event_subscription
    if user == event.user
      errors.add(:user_email, :self_subscription_prohibited)
    end
  end

  # запрет использования зарегистрированной почты для подписки на эвент
  def registered_email_validation
    if User.exists?(email: user_email)
      errors.add(:user_email, :already_taken)
    end
  end
end
