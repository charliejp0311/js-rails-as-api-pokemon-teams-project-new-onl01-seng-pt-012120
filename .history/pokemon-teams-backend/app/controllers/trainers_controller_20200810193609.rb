class TrainersController < ApplicationController
    def index
        trainers = Trainer.all
        render json: trainers.to_json(:include => {
            :pokemons => {:only => [:species, :nickname]}
        }, :except => [:updated_at])    
    end
    def show
        trainer = Trainer.find_by(id: params[:id])
        render json: trainers.to_json(:include => {
            :pokemons => {:only => [:species, :nickname]}
        }, :except => [:updated_at])    
    end
end
