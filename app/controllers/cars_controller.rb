class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      flash[:notice] = "Successfully added car"
      redirect_to new_car_path
    else
      flash[:notice] = "please fill out specified fields"
      render 'new'
    end
  end

  protected
  def car_params
    params.require(:car).permit(:color, :year, :mileage, :manufacturer_id)
  end
end
