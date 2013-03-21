class AlbumsController < ApplicationController
  def index
    @albums = Album.order(:name)
  end
  def new
    @album = Album.new
  end
  def create
    album = Album.create(params[:album])
    redirect_to(albums_path)
  end
  def show
    @album = Album.find(params[:id])
  end
  def edit
    @album = Album.find(params[:id])
  end
  def update
    album = Album.find(params[:id])
    album.update_attributes(params[:album])
    redirect_to(albums_path)
  end
  def destroy
  end
end