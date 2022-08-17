class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :update, :destroy]

    def index
        render json: Review.all
    end

    def show
        render json: @review
    end

    def create
        review = @current_user.reviews.create!(review_params)
        render json: review, status: :created
    end

    def update
        @review.update(review_params)
        render json: @review, status: :accepted
    end

    def destroy
        @current_user.reviews.destroy(find_review)
        head :no_content
    end

    private

    def find_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.permit(:user_id, :episode_id, :comment, :rating)
    end

end