require 'spec_helper'

describe "Run" do
  describe "create" do
    let!(:run){ FactoryGirl.create(:run) }
    it "should have many suite results" do
      run.should have_many(:suite_results)
    end
  end
  
  describe "destroy" do
    let!(:suite_result){FactoryGirl.create(:suite_result)}   
    it "should destroy the suite result belongs to the test suite" do
      SuiteResult.all.should include(suite_result)
      suite_result.run.destroy
      SuiteResult.all.should_not include(suite_result)
    end 
  end
end
