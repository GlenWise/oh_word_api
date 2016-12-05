class GameWordsController < ApplicationController
  before_action :set_game_word, only: [:show, :edit, :update, :destroy]

  # GET /game_words
  # GET /game_words.json
  def index
    @game_words = GameWord.all
  end

  # GET /game_words/1
  # GET /game_words/1.json
  def show
  end

  # GET /game_words/new
  def new
    @game_word = GameWord.new
  end

  # GET /game_words/1/edit
  def edit
  end

  def for_game
    @game_words = GameWord.all.for_game(game_word_params[:game_id])
    render json: @game_words
  end
  
  # POST /game_words
  # POST /game_words.json
  def create
    @game_word = GameWord.new(game_word_params)
    if @game_word.save
      format.json { render :show, status: :created, location: @game_word }
    else
      format.json { render json: @game_word.errors, status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /game_words/1
  # PATCH/PUT /game_words/1.json
  def update
      if @game_word.update(game_word_params)
        format.json { render :show, status: :ok, location: @game_word }
      else
        format.json { render json: @game_word.errors, status: :unprocessable_entity }
      end
  end

  # DELETE /game_words/1
  # DELETE /game_words/1.json
  def destroy
    @game_word.destroy
    format.json { head :no_content }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_word
      @game_word = GameWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_word_params
      params.require(:game_word).permit(:game_id, :word_id, :text)
    end
end
