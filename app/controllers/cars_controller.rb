class CarsController < ApplicationController
  def index
    @cars = Car.all
    raise
  end
end
