class ArtworksController < ApplicationController
  def index
    @artwork = Artwork.all
  end
end
