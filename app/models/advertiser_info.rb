class AdvertiserInfo < ActiveRecord::Base
  belongs_to :owner, :class_name => 'Member'
  belongs_to :real_user, :class_name => 'Member'
  
  belongs_to :network
  
  has_many :orders, :foreign_key => 'advertiser_id'
end
