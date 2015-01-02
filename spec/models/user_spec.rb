require 'spec_helper'

describe User do
  let(:blanks) { ['', nil] }

  it { should have_many(:tasks).dependent(:destroy) }

  it { should have_valid(:first_name).when('Johnny') }
  it { should_not have_valid(:first_name).when(*blanks) }

  it { should have_valid(:last_name).when('Smith') }
  it { should_not have_valid(:last_name).when(*blanks) }
end
