class SongsController < ApplicationController

  def index
    @songs = Song.order(:name)
  end
  def new
    @song = Song.new
  end
  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to(songs_path)
    else
      render :new
    end
  end
  def show
    @song = Song.find(params[:id])
  end
  def edit
    @song = Song.find(params[:id])
      render :new
  end
  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
      redirect_to(song_path)
    else
      render :new
    end
  end

  def purchase
    @song = Song.find(params[:id])
  end

end