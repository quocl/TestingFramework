class Run < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :suite_results, :dependent => :destroy
end
