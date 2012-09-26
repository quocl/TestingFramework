require 'spec_helper'

describe "Run" do
  describe "create" do
    let!(:run){ FactoryGirl.create(:run) }
    it "should have many suite results" do
      run.should have_many(:suite_results)
    end
  end
end
