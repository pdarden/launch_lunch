require 'spec_helper'

describe Dish do
  it { should have_valid(:name).when('food') }
  it { should_not have_valid(:name).when('', nil) }

  it { should belong_to(:restaurant) }

  it { should belong_to(:category) }

  it { should have_many(:comments) }
end
