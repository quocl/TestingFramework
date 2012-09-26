class SuiteResult < ActiveRecord::Base
  attr_accessible :run_id, :status, :test_suite_id
  belongs_to :run
  belongs_to :test_suite
end
