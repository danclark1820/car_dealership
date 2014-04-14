require 'spec_helper'

describe Manufacturer do
  it {should have_valid(:name).when('BMW')}
  it {should_not have_valid(:name).when(nil, '')}
  it {should have_valid(:country).when('Germany')}
  it {should_not have_valid(:country).when(nil, ' ')}
  it {should have_many(:cars)}

  it 'should nullify its dependants' do
    manufacturer =  FactoryGirl.create(:manufacturer)
    car = FactoryGirl.create(:car, manufacturer: manufacturer)
    car_count = Car.count
    expect(car.manufacturer).to eql(manufacturer)
    manufacturer.destroy
    car.reload
    expect(car.manufacturer).to eql(nil)
    expect(Car.count).to eql(car_count)
  end
end
