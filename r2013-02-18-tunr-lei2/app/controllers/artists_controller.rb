class ArtistsController < ApplicationController

  def index
    @artists = Artist.order(:name)
  end
  def new
    @artist = Artist.new
  end
  def create
    @artist = Artist.new(params[:artist])
    if @artist.save
      redirect_to(artists_path)
    else
      render :new
    end
  end
  def show
    @artist = Artist.find(params[:id])
  end
  def edit
    @artist = Artist.find(params[:id])
      render :new
  end
  def update
    @artist = Artist.find(params[:id])
    if @artist.update_attributes(params[:artist])
      redirect_to(artist_path)
    else
      render :new
    end
  end
end