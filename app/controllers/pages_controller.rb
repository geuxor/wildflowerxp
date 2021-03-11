class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @experience = Experience.first(6)
  end

  def dashboard
    # want to show all experiences of the current user
    @experiences = current_user.experiences
    @my_booking_requests = Booking.all.select{ |booking| booking.experience.user == current_user }
  end
end
