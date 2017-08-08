class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def favorite
    user = User.find(params[:user_id])
    song = Song.find(params[:song_id])
    user.songs << song

    redirect_to '/'
  end
end
