class Resource < ActiveRecord::Base
  attr_accessible :name, :description, :publicly_searchable

  has_many :shares
  has_many :shared_groups, :through => :shares, :source => :group

  define_index do
    indexes :name
    indexes description

    has shared_groups(:id), :as => :shared_group_ids
    has :publicly_searchable
  end
end
