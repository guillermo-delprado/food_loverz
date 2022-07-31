class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_one_attached :media
  has_many :comments, dependent: :destroy

  validates :title, presence: true
end
