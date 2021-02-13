class LikesController < ActionController::Base

  def create 
    @review = Review.find(like_params[:id])
    Like.create(user_id: @review.user.id, review_id: @review.id)

    redirect_to activities_path
  end

  private 
  
  def like_params
    params.permit(:id, :authenticity_token)
  end
end