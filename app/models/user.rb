class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :events
  has_many :comments
  has_many :subscriptions
  before_validation :set_name, on: :create

  validates :name, presence: true, length: {maximum: 35}

  private

  def set_name
    self.name = "username_#{rand(999)}" if self.name.blank?
  end
end
