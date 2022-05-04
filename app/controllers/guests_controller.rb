class GuestsController < ApplicationController
    def index
        guest = Guest.all
        render json: guest
    end    
end
