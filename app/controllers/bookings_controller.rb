class BookingsController < ApplicationController
  def new
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.experience_id = @experience.id
    @booking.status = :pending
    @booking.set_total_price
    if @booking.save
      redirect_to experience_path(@experience)
      flash[:notice] = "You're booking is complete!"
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:nr_of_people, :start_date, :end_date, :experience_id, :user_id)
  end
end
