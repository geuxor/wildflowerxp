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
    if @booking.save!
      redirect_to dashboard_path
      flash[:notice] = "You're booking is complete!"
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    raise
    @booking.update(booking_params_update)
    
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:nr_of_people, :start_date, :end_date, :experience_id, :user_id)
  end

  def booking_params_update
    params.require(:booking).permit(:status)
  end

end
