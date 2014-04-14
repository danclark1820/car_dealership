# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    color "red"
    year 1990
    mileage "60,000"
    manufacturer_id 1
  end
end
