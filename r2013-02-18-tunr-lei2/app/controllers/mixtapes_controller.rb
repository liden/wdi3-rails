class MixtapesController < ApplicationController
  before_filter :check_if_logged_in

  def new
    @mixtape = Mixtape.new
  end
  def create
    @mixtape = Mixtape.new(params[:mixtape])
    if @mixtape.save
      redirect_to(root_path)
    else
      render :new
    end
  end
  def show
    @mixtape = Mixtape.find(params[:id])
  end

  private
  def check_if_logged_in
    redirect_to(root_path) if @auth.nil?
  end
end