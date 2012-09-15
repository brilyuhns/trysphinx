class Share < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :resource
  belongs_to :group
end
