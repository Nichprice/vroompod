class EpisodesController < ApplicationController
before_action :find_episode, only: [:show, :episode_reviews]

    def index
        render json: Episode.all
    end

    def show
        render json: @episode, serializer: EpisodeReviewsSerializer
    end

    def episode_reviews
        render json: @episode.reviews
    end

    private

    def find_episode
        @episode =  Episode.find(params[:id])
    end

end
