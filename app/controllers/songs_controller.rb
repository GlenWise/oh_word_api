class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all
    @words = Word.all
    #render json: @songs
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
    render json: @song
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(song_params)
    if @song.save
      render json: @song, status: :created, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
    
  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
      if @song.update(song_params)
        format.json { render :show, status: :ok, location: @song }
      else
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song.destroy
    format.json { head :no_content }
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:title, :artist, :lyrics)
    end
end
