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

end
