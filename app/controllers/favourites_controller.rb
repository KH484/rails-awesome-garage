class FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new
    @car = Car.find(params[:car_id])
    @favourite.car = @car

    if @favourite.save
      redirect_to car_path(@car)
      # change icon to red
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @favourites = Favourite.all
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path(@favourite), status: :see_other
  end
end
