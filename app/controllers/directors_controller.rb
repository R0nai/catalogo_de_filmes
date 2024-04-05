class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end
  
  def show
    @director = Director.find(params[:id])
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(
      name: params[:director][:name],
      nationality: params[:director][:nationality],
      dob: params[:director][:dob],
      genre_id: params[:director][:genre_id],
    )

    if @director.save
      return redirect_to directors_path
    end
    render :new
  end
end