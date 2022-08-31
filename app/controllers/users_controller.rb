class UsersController < ApplicationController
before_action :find_user, only: [:show, :user_reviews]
require 'pry'

    def index
        render json: User.all
    end

    def show
        render json: @user
    end

    def user_reviews
        render json: @user.reviews
    end
    
    def create
        user = User.find_or_create_by(username: params[:_json])
        session[:user_id] = user.id
        render json: user, status: :created
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

end
