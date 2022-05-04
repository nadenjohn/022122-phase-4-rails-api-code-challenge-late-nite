class EpisodesController < ApplicationController

    def index
        episodes = Episode.all
        render json: episodes
    end
    
    def show
        episode = Episode.find(params[:id])
        render json: episode, serializer: EpisodeWithGuestsSerializer
    end

    def destroy
        episode = Episode.find(params[:id])
        episode.destroy
        head :no_content
    end
end
