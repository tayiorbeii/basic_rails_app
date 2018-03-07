class AlbumsController < ApplicationController
  def index
    @album = Album.last
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)

    if @album.invalid?
      flash[:error] = 'Invalid data entered!'
    end

    redirect_to root_path
  end

  private

  def album_params
    params.require(:album).permit(:title, :artist)
  end
end
