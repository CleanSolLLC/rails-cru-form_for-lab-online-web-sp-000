class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.update(artist_params(:name))
    redirect_to genre_path(@genre)
  end

  private
    def artist_params(*args)
      params.require(:artist).permit(*args)
    end
end
