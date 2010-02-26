class Site < ActiveRecord::Base
  has_many :ad_zones
  belongs_to :publisher,:class_name => "PublisherInfo"
  belongs_to :category, :class_name => "SiteCategory"
  belongs_to :owner, :class_name => "Member"
end
