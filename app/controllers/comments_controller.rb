class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @listing = Listing.find(params[:id])
    @user = current_user
    @comment = @listing.comments.create(body: params[:comment][:body], user_id: current_user)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_back fallback_location: root_path
    else
      flash[:error] = @comment.errors.full_messages.to_sentence
      redirect_to root_path
    end
  end
end
