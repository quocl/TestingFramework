FactoryGirl.define do 
  factory :suite_result do |suite_result|
    suite_result.status 0
    suite_result.association :run
    suite_result.association :test_suite
  end 
end
   