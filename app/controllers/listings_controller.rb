class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(price: params[:listing][:price], description: params[:listing][:description], topic: params[:listing][:topic])
    if @listing.save
      redirect_to root_path
    else
      flash[:error] = @listing.errors.full_messages.to_sentence
      redirect_to new_listing_path
    end
  end
end
