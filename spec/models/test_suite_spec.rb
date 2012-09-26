require 'spec_helper'

describe "Test Suite" do
  describe "create" do
    let!(:test_suite){FactoryGirl.create(:test_suite)}
    it "should validate uniqueness of test suite name" do
      test_suite.should validate_uniqueness_of(:name)
    end
    
    it "should validate presence of test suite name" do
      test_suite.should validate_presence_of(:name)
    end
    
    it "should have many suite suite results" do
      test_suite.should have_many(:suite_results)
    end
  end

  describe "destroy" do
    let!(:suite_result){FactoryGirl.create(:suite_result)}   
    it "should destroy the suite result belongs to the test suite" do
      SuiteResult.all.should include(suite_result)
      suite_result.test_suite.destroy
      SuiteResult.all.should_not include(suite_result)
    end 
  end
end
