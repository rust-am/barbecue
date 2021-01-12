class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :events

  before_validation :set_name, on: :create

  validates :name, presence: true, length: {maximum: 35}
  # validates :email, presence: true, uniqueness: true, length: {maximum: 255}, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/

  private

  def set_name
    self.name = "username_#{rand(999)}" if self.name.blank?
  end
end
