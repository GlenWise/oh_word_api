class GamesController < ApplicationController
    skip_before_filter  :verify_authenticity_token
    before_action :set_game, only: [:show, :edit, :update, :destroy]

    # GET /games
    # GET /games.json
    def index
        @games = Game.all
    end

    # GET /games/1
    # GET /games/1.json
    def show; end

    # GET /games/new
    def new
        @game = Game.new
    end

    # GET /games/1/edit
    def edit; end

    # POST /games
    # POST /games.json
    def create
        @game = Game.new(game_params)

        if @game.save
            render json: @game, status: :created, location: @game
        else
            render json: @game.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /games/1
    # PATCH/PUT /games/1.json
    def update
        if @game.update(game_params)
            format.json { render :show, status: :ok, location: @game }
        else
            format.json { render json: @game.errors, status: :unprocessable_entity }
        end
    end

    # DELETE /games/1
    # DELETE /games/1.json
    def destroy
        @game.destroy
            format.json { head :no_content }
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_game
        @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
        params.require(:game).permit(:user_id, :song_id)
    end
end
