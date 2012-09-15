class Group < ActiveRecord::Base
  attr_accessible :name

  has_many :shares
  has_many :shared_resources, :through => :shares, :source => :resource
end
