class Booking < ApplicationRecord
  before_create :set_total_price
  belongs_to :user
  belongs_to :experience
  has_many :reviews
  validates :nr_of_people, numericality: true
  validates :nr_of_people, :start_date, :end_date, presence: true
  enum status: [:pending, :accepted, :declined]

  validate :limit_max_guests

  private
  def limit_max_guests
    if experience.max_guests > nr_of_people
      errors.add(:nr_of_people, "Please specify a nr. less than #{experience.max_guests}")
    end
  end

  def duration
    (end_date - start_date).to_i + 1
  end

  def set_total_price
    self.total_price = experience.price * nr_of_people * duration
  end
  
end
