class TricksController < ApplicationController
   before_action :set_trick, only: [:show, :edit, :update, :destroy] 
   before_action :authenticate_user!
   
    def show
    end
    
    def index
         @tricks = current_user.tricks
    end
    
    def new
        @trick = Trick.new
    end
    
    def create
        @trick = Trick.new(trick_params)
        @trick.user = current_user
        if @trick.save
         redirect_to trick_path(@trick)
        else
         render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @trick.update(trick_params)
            redirect_to @trick
        else
            render 'edit'
        end
    end
    
    def destroy
        @trick.destroy
        redirect_to tricks_path
    end
    
    def trick_params
        params.require(:trick).permit(:name, :image)
    end
    
    def set_trick
        @trick = Trick.find(params[:id])
    end
    
end
