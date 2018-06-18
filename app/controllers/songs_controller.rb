class SongsController < ApplicationController


  def index
    @songs = Song.all
    render json: @songs
  end

  #
  #
  def create
    @song = Song.create(song_params)
  end

  def show
    @song = Song.find(params[:id])
    render json: @song
  end

  private

  def song_params
    params.require(:songs).permit(
      :name,
      :uri,
      :artist,
      :image,
      :upvotes,
      :downvotes,
      :trackid,
      :vote
    )
  end


end
