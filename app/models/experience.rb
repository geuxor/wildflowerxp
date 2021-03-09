class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :title, :description, :location, :price, :activity, :max_guests, :meeting_point, :policies, :activity_effort, presence: true
  validates :price, :max_guests, numericality: true
  validates :activity, inclusion: { in: %w[Sport Art Nature Music Food Wild] }
  validates :activity_effort, inclusion: { in: 1..5 }
  has_one_attached :photo
end
