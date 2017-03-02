class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.create(name:params[:artist][:name], bio:params[:artist][:bio])
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end


  private

  def
    artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
