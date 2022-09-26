class BirdsController < ApplicationController
    def index
        render json: Bird.all , except: [:created_at, :updated_at]
    end
    def show
        # birds = Bird.find(params[:id])
        birds = Bird.find_by(id: params[:id])
        if birds
            render json: birds , status: :ok
          else
            render json: { error: "Bird not found" }, status: :not_found
          end
    end
end
