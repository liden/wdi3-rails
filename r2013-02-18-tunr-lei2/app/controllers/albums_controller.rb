class AlbumsController < ApplicationController

  def index
    @albums = Album.order(:name)
  end
  def new
    @album = Album.new
  end
  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to(albums_path)
    else
      render :new
    end
  end
  def show
    @album = Album.find(params[:id])
  end
  def edit
    @album = Album.find(params[:id])
    render :new
  end
  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      redirect_to(album_path)
    else
      render :new
    end
  end
end
