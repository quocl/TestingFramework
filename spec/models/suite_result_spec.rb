require 'spec_helper'

describe "Suite Result" do
  describe "build" do 
    let!(:suite_result){SuiteResult.new}
    it "should initialize the value of status to 0" do
      suite_result.status.should eq(0)
    end
  end
  
  describe "create" do
    let!(:suite_result){FactoryGirl.create(:suite_result)}
    it "should belong to run" do
      suite_result.should belong_to(:run)
    end
    
    it "should belong to test suite" do
      suite_result.should belong_to(:test_suite)
    end
  end

end
