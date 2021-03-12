class Booking < ApplicationRecord
  before_create :set_total_price
  belongs_to :user
  belongs_to :experience
  has_many :reviews
  validates :nr_of_people, numericality: true
  validates :nr_of_people, :start_date, :end_date, presence: true
  enum status: [:pending, :accepted, :declined]

  validate :limit_max_guests
  validate :check_start_end_date

  private

  def limit_max_guests
    if experience.max_guests <= nr_of_people
      errors.add(:nr_of_people, "#{nr_of_people}, needs to be less than #{experience.max_guests}")
    end
  end

  def check_start_end_date
    if start_date > end_date
      errors.add(:end_date, " needs to be after #{start_date}")
    end
  end

  def duration
    (end_date - start_date).to_i + 1
  end

  def set_total_price
    self.total_price = experience.price * nr_of_people * duration
  end
end
