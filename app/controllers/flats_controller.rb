class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end
  def top
    @flats = Flat.where('stars >=5')
  end
  def show
    @flat = Flat.find(params[:id])
  end
  def new
    @flat = Flat.new
  end
  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to @flat
  end
  def edit
    @flat = Flat.find(params[:id])
  end
  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to @flat
  end
  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :address, :description, :stars)
  end
end
