class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(price: params[:listing][:price], description: params[:listing][:description], topic: params[:listing][:topic], address: params[:listing][:address], user: current_user)
    if @listing.save
      redirect_to root_path
    else
      flash[:error] = @listing.errors.full_messages.to_sentence
      redirect_to listings_new_path
    end
  end

  def list
    @listing = Listing.all
    @user = current_user
  end
end
