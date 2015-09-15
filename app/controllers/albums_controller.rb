class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
    #puts "    >>> #{@album.inspect}"
    @tracks = @album.tracks.all
    puts "    >>> #{@tracks.first.inspect}"
	@dog="dogz"
  end
end
