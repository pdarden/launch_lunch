require 'spec_helper'

describe Comment do
  let(:blanks) { [nil, ''] }

  it { should have_valid(:body).when('Disgusting') }
  it { should_not have_valid(:body).when(*blanks) }

  it { should have_valid(:author).when('Master Troll') }
  it { should_not have_valid(:author).when(*blanks) }

  it { should validate_presence_of(:dish_id) }

  it { should belong_to(:dish) }
end
