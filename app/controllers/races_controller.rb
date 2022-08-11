class RacesController < ApplicationController
    before_action :find_race, only: :show

    def index
        render json: Race.all
    end

    def show
        render json: @race
    end

    private

    def find_race
        @race =  Race.find(params[:id])
    end
end
