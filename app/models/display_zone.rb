class DisplayZone < ActiveRecord::Base
  has_one :ad_zone
  
  belongs_to :campaign
  belongs_to :owner, :class_name => "Member"
end
