require 'spec_helper'

feature 'user associates car with manufacturer', %q{
  As a car salesperson
  I want to record a car listing's manufacturer
  So that I can keep track of its manufacturer
} do
  #Acceptance Criteria
  # When recording a car listing, I want to optionally associate it with its manufacturer.
  # If I delete a manufacturer, the manufacturer and its primary key should no longer be associated with any car listings.

  context 'with valid attributes' do
    it 'associates a car with a manufacturer' do
      manufacturer = FactoryGirl.create(:manufacturer)
      car = FactoryGirl.build(:car, manufacturer: nil)
      visit new_car_path

      fill_in 'Color', with: car.color
      fill_in 'Year', with: car.year
      fill_in 'Mileage', with: car.mileage
      select manufacturer.name, from: 'Manufacturer'
      click_on 'Add car'

      expect(page).to have_content("Successfully added car")
      expect(Car.last.manufacturer).to eql(manufacturer)
    end
  end
end
