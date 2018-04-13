class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @listings = Listing.all
    @hash = Gmaps4rails.build_markers(@listings) do |list, marker|
      marker.lat list.latitude
      marker.lng list.longitude
    end
    puts("hash")
    puts(@hash.join(", "))
  end

end
