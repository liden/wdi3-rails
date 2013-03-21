class MovieController < ApplicationController
  def movie
  end

  def show_movie
  end

  def get_movie
    if params[:title].present?
      name = params[:title].gsub(' ', '+')
      url = "http://www.omdbapi.com/?t=#{name}"
      html = HTTParty.get(url)
      @hash = JSON(html)
    end
    render 'show_movie'
  end

end
