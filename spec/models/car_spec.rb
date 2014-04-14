require 'spec_helper'

describe Car do
  it { should have_valid(:color).when('red')}
  it { should_not have_valid(:color).when('', nil)}
  it { should have_valid(:year).when(1980)}
  it { should_not have_valid(:year).when(nil, '')}
  it { should_not have_valid(:year).when(1945)}
  it { should have_valid(:mileage).when('60,000')}
  it { should_not have_valid(:mileage).when('', nil)}
  it { should belong_to(:manufacturer)}
end
