require 'spec_helper'

describe Task do
  let(:blanks) { ['', nil] }

<<<<<<< HEAD
  it { should belong_to :user}
=======
  it { should belong_to :user }

>>>>>>> users-model-test
  it { should have_valid(:title).when('a title') }
  it { should_not have_valid(:title).when(*blanks) }

  it { should have_valid(:user).when(User.new) }
  it { should_not have_valid(:user).when(nil) }
end
