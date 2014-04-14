require 'spec_helper'

feature 'user adds a car', %q{
  As a car salesperson
  I want to record a newly acquired car
  So that I can list it in my lot
} do
  #Acceptance Crtieria
  # I must specify the color, year, and mileage of the car.
  # Only years from 1980 and above can be specified.
  # I can optionally specify a description of the car.
  # If I enter all of the required information in the required formats, the car is recorded.
  # If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
  # Upon successfully creating a car, I am redirected so that I can create another car.

  context 'with valid attributes' do
    it 'adds a car' do
      visit new_car_path
      expect(page).to have_content('Add a Car')
      fill_in 'Color', with: 'red'
      fill_in 'Year', with: 1990
      fill_in 'Mileage', with: '60,000'
      click_on 'Add car'
      expect(page).to have_content('Successfully added car')
    end
  end
end
