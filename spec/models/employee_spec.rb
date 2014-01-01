require 'spec_helper'

describe Employee do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }

  it { should have_valid(:email).when('test@test.com', 'test123+hi@gmail.com') }
  it { should_not have_valid(:email).when('test', 123) }

  context "Uniqueness" do
    before :each do
      FactoryGirl.create(:employee)
    end

    it { should validate_uniqueness_of :email }
  end

end
