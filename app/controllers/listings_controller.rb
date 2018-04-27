class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(price: params[:listing][:price], description: params[:listing][:description], topic: params[:listing][:topic], address: params[:listing][:address], user: current_user, num_favorites: 0, favorites_user_id: "NULL")
    if @listing.save
      redirect_to root_path
    else
      flash[:error] = @listing.errors.full_messages.to_sentence
      redirect_to listings_new_path
    end
  end

  def add_favorite
     @listing = Listing.find(params[:id])
     if @listing.favorites_user_id != "NULL"
     else
     @listing.favorites_user_id = current_user
     @listing.num_favorites += 1
     @listing.save
     redirect_back fallback_location: root_path
    end
  end

  def index
    @listings = Listing.all
    @user = current_user
  end
  
  def show
    @listing = Listing.find(params[:id])
    @user = current_user
  end
end
