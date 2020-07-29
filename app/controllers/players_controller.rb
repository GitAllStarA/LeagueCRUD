class PlayersController < ApplicationController

    # show list of players
    def index
        @player = Player.all
    end

    # to add new player
    def new
    end

    # to create player
    def create

        # here we are doing the mass assignment by player_params private method passsing as a argument to instance of the player object
        player=Player.new(player_params)
        player.first_name=params[:player][:first_name]
        player.last_name=params[:player][:last_name]
        if player.save
            redirect_to"/players"
        else
            flash[:errors]=player.errors.full_messages
            redirect_to "/players/new"
        end
    end
     
    # show's player profile
    def show
        @player = Player.find(params[:id])
    end

    # edit player's profile
    def edit
        @player = Player.find(params[:id])
    end

    # update player's data
     def update
        player = Player.find(params[:id])
        if player.update(player_params)
            redirect_to "/players"
        else
            flash[:errors]=player.errors.full_messages
            redirect_to "/players/#{player.id}/edit"
        end
    end

    def destroy
        @player = Player.find(params[:id])
        @player.destroy
        redirect_to "/players"
    end

    # if there are many attributes to fill,
    # so rails allow massive assignment
    private
        def player_params
            params.require(:player).permit(:first_name,:last_name)
        end

    
end
