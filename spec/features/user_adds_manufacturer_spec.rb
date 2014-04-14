require 'spec_helper'

feature 'user adds a manufacturer', %q{
  As a car salesperson
  I want to record a car manufacturer
  So that I can keep track of the types of cars found in the lot
} do

  #Acceptance Criteria
  # I must specify a manufacturer name and country.
  # If I do not specify the required information, I am presented with errors.
  # If I specify the required information, the manufacturer is recorded and I am redirected to enter another new manufacturer.

  context 'with valid attributes' do
    it 'is saved manufacturers' do
      visit new_manufacturer_path

        expect(page).to have_content('Add a manufacturer')
        fill_in 'Name', with: 'BMW'
        select 'Germany', from: 'Country'

        click_on 'Add manufacturer'
        expect(page).to have_content('Successfully added manufacturer')
      end
    end
  end

