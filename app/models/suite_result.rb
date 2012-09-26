class SuiteResult < ActiveRecord::Base
  attr_accessible :run_id, :status, :test_suite_id
end
