class TestSuite < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  validates :name, :uniqueness => true 
  has_many :suite_results, :dependent => :destroy
end
