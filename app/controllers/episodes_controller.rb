class EpisodesController < ApplicationController
before_action :find_episode, only: :show

    def index
        render json: Episode.all
    end

    def show
        render json: @episode
    end

    private

    def find_episode
        @episode =  Episode.find(params[:id])
    end

end
