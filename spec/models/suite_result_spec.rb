require 'spec_helper'

describe "Suite Result" do
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
