class ArtworksController < ApplicationController
  def index
    @artwork = Artwork.all
  end

  def new
    @artwork = Artwork.new
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def create
    if (artwork = Artwork.create(artwork_params))
      flash[:success] = "Successfully created '#{artwork.title}'!"
      redirect_to new_artwork_path
    else
      flash[:error] = "Something went wrong. :(\n#{artwork.errors.full_messages}"
    end
  end

  def update
    artwork = Artwork.find(params[:id])
    if artwork.update(artwork_params)
      flash[:success] = "Saved changes to '#{artwork.title}'!"
      redirect_to artworks_path
    else
      flash[:error] = "Couldn't save:\n#{artwork.errors.full_messages}"
    end
  end

  def destroy
    if (artwork = Artwork.find(params[:id]).destroy)
      flash[:success] = "Deleted '#{artwork.title || 'it'}'"
    else
      flash[:error] = "Something went wrong\n#{artwork.errors.full_messages}"
    end
    redirect_to artworks_path
  end

  private

  def artwork_params
    params[:artwork].permit(:title, :notes, :earliest_year, :latest_year)
  end
end
