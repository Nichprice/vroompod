class UsersController < ApplicationController
before_action :find_user, only: :show

    def index
        render json: User.all
    end

    def show
        render json: @user
    end
    
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.permit(:username, :password_digest)
    end

end
