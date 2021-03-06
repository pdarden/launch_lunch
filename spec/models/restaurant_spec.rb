require 'spec_helper'

describe Restaurant do
  let(:blanks) { [nil, ''] }

  it { should have_valid(:name).when('a name') }
  it { should_not have_valid(:name).when(*blanks) }

  it { should have_many(:dishes) }
end
