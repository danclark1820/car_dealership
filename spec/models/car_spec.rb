require 'spec_helper'

describe Car do
  it { should have_valid(:color).when('red')}
  it { should have_valid(:year).when(1980)}
  it { should have_valid(:mileage).when('60,000')}
end
