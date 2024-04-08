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
      director_id: params[:film][:director_id],
      image: params[:film][:image],
      status: params[:film][:status]
      )

    if @film.save
      return redirect_to films_path
    end
    render :new
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    if @film.update(
      title: params[:film][:title],
      country: params[:film][:country],
      year: params[:film][:year],
      duration: params[:film][:duration],
      synopsis: params[:film][:synopsis],
      genre_id: params[:film][:genre_id],
      director_id: params[:film][:director_id],
      image: params[:film][:image],
      status: params[:film][:status]
    )
    return redirect_to film_path(@film.id)
    end
    render :edit
  end
end