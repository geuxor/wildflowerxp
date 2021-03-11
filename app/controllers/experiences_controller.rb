class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show]

  def index
    @experiences = search_experiences
    @markers = @experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude
      }
    end
  end

  def new
    @experience = Experience.new
  end

  def show
  end

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    if @experience.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  def experience_params
    params.require(:experience).permit(:title, :description, :location, :price, :activity, :max_guests, :meeting_point, :policies, :activity_effort, :photo)
  end

  private

  def search_experiences
    experiences = Experience.all
    experiences = experiences.where(activity: params[:activity]) if params[:activity].present?
    experiences = experiences.near(params[:location], 10) if params[:location].present?
    experiences = without_bookings(experiences) if params[:start_date].present? && params[:end_date].present?
    experiences
  end

  def without_bookings(experiences)
    sql_query = <<-SQL
    bookings.id IS NULL OR
    :end_date < bookings.start_date OR
    :start_date > bookings.end_date
    SQL
    experiences.left_outer_joins(:bookings).where(sql_query,
      end_date: params[:end_date], start_date: params[:start_date])
  end
end
