require 'spec_helper'

describe Manufacturer do
  it {should have_valid(:name).when('BMW')}
  it {should have_valid(:country).when('Germany')}
end
