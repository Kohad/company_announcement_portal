class Profile < ApplicationRecord
  belongs_to :user
  validates :bio, length: { maximum: 500 }, allow_blank: true
  validates :avatar, presence: false
end
