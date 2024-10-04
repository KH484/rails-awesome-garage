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
end
