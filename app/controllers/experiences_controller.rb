class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show]

  def index
    @experiences = Experience.all
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
    @experiences = Experience.all
    @markers = [{lat: @experience.latitude, lng: @experience.longitude}]
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
end
