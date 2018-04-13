class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end

end
