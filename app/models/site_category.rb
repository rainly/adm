class SiteCategory < ActiveRecord::Base
  has_many :sites
  
  belongs_to :owner, :class_name => "Member"
end
