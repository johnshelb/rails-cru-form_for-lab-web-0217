class SongsController < ApplicationController
def index
  @songs = Song.all
end

def new
  @song=Song.new
end

def create
  @song = Song.new(name:params[:song][:name])
  @song.save
  redirect_to @song
end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(name:params[:song][:name],artist_id:params[:song][:artist_id],genre_id:params[:song][:genre_id])
    redirect_to @song
  end

  def show
    @song = Song.find(params[:id])
  end
end