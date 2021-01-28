class Photo < ApplicationRecord
  belongs_to :event
  belongs_to :user

  mount_uploader :avatar, PhotoUploader

  scope :persisted, -> { where "id IS NOT NULL"}
end
