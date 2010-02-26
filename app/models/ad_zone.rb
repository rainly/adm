class AdZone < ActiveRecord::Base
  belongs_to :site

  belongs_to :category, :class_name => "AdZoneCategory"

  belongs_to :owner, :class_name => "Member"

  belongs_to :charge_type, :class_name => "AdZoneType"

  belongs_to :status, :class_name => "AdZoneStatus"
end
