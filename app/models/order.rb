class Order < ActiveRecord::Base
  has_many :campaigns, :foreign_key => 'order_id'


  belongs_to :advertiser, :class_name => "AdvertiserInfo"

  belongs_to :owner, :class_name => "Member"
  
  belongs_to :status, :class_name => "OrderStatus"
  
end

