class AlbumsController < ApplicationController
  def index
    @album = Album.first
  end

  def new
    @album = Album.new    
  end
end
