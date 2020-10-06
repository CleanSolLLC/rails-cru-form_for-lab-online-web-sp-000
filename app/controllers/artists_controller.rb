class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
    binding.pry
    redirect_to artist_path(@artist)
  end

  private
    def artist_params(*args)
      params.require(:artist).permit(*args)
    end
end
