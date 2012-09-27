require 'spec_helper'

describe TestSuiteController do
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
end
