class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @bunker = Bunker.find(params[:bunker_id])
  end

  def create
    @review = Review.new(review_params)
    @bunker = Bunker.find(params[:bunker_id])
    @review.bunker = @bunker
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require (:booking).permit(:rating)
  end
end
