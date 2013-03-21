class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name)
  end
  def new
    @artist = Artist.new
  end
  def create
    artist = Artist.create(params[:artist])
    redirect_to(artists_path)
  end
  def show
    @artist = Artist.find(params[:id])
  end
  def edit
    @artist = Artist.find(params[:id])
  end
  def update
    artist = Artist.find(params[:id])
    artist.update_attributes(params[:artist])
    redirect_to(artists_path)
  end
  def destroy
  end
end
