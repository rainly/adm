class AdBoard < ActiveRecord::Base

  has_and_belongs_to_many :campaigns
  belongs_to :owner, :class_name => "Member"

end
