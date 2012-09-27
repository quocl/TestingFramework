require 'spec_helper'

describe TestSuitesController do
  let!(:test_suite){FactoryGirl.create(:test_suite)}
  describe 'GET index' do
    before(:each) do
      get :index
    end
    it "should be successful" do
      response.should be_success
    end
    
    it "should assign posts" do
      assigns[:test_suites].should eq(TestSuite.all)
    end
  end
  
  describe "GET show" do
    before(:each) do
      get :show, :id => test_suite.id
    end
    
    it "should be successful" do
      response.should be_success
    end
    
    it "should assign post to post" do
      assigns[:test_suite].should eq(test_suite)
    end
  end
  
  describe "GET new" do
    it "should not save the test suite" do
      expect{get :new}.to change{TestSuite.count}.by(0)
      assigns[:test_suite].should_not be_persisted
    end
  end
end
