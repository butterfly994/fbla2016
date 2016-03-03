class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
  end

  def index
    @reviews = Review.paginate(:page => params[:page], :per_page => 2)
  end

  def show
    @review = Review.find_by(params[:id])
  end

  def edit
    @review = Review.find_by(params[:id])
  end

  def update
    @review = Review.find_by(params[:id])
    @review.update(review_params)
  end

  private
    def review_params
      params.require(:review).permit(:title, :body, :rating)
    end
end
