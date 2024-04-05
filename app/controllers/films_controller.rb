class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(
      title: params[:film][:title],
      country: params[:film][:country],
      year: params[:film][:year],
      duration: params[:film][:duration],
      synopsis: params[:film][:synopsis],
      genre_id: params[:film][:genre_id],
      director_id: params[:film][:director_id]
      )

    if @film.save
      return redirect_to films_path
    end
    render :new
  end
end