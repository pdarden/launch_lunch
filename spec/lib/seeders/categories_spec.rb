require 'spec_helper'

describe Seeders::Categories do
  let(:seeder) { Seeders::Categories }

  it 'seeds categories' do
    seeded_category = Seeders::Categories.categories.first
    seeder.seed
    expect(Category.where(name: seeded_category)).to be_present
  end

  it 'does not create duplicates' do
    seeder.seed
    count_after_seed = Category.count
    seeder.seed
    expect(Category.count).to eq(count_after_seed)
  end
end
