class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @experience = Experience.first(6)
  end
end
