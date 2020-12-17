class User < ApplicationRecord

  has_many :events

  validates :name, presence: true, length: {maximum: 35}
  validates :email, presence: true, uniqueness: true, length: {maximum: 255}, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/
end
