class Experience < ApplicationRecord
  DEFAULT_IMG = 'https://res.cloudinary.com/geuxor/image/upload/v1615381828/samples/sheep-closeup-eating-grass_bbalee.jpg'
  ACTIVITIES = %w( Nature Sport Animals Wild Danger Culture )
  ACTIVITY_EFFORTS = (1..5)
  POLICY_ICON = {
    "No pets" => "fa-cat",
    "No parties or events" => "fa-glass-cheers",
    "Stick to the group" => "fa-user-friends",
    "No smoking" => "fa-smoking-ban"
  }
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :title, :description, :location, :price, :activity, :max_guests, :meeting_point, :policies, :activity_effort, presence: true
  validates :price, :max_guests, numericality: true
  validates :activity, inclusion: { in: ACTIVITIES }
  validates :activity_effort, inclusion: { in: ACTIVITY_EFFORTS }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
