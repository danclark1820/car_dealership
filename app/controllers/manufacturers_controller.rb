class ManufacturersController < ApplicationController
  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      flash[:notice] = "Successfully added manufacturer"
      redirect_to new_manufacturer_path
    else
      flash[:notice] = "Please fill out required fields"
      render new_manufacturer_path
    end
  end

  protected
  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end
end
