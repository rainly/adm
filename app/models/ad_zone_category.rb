class AdZoneCategory < ActiveRecord::Base
  has_many :ad_zones
  
  belongs_to :owner, :class_name => "Member"
end
