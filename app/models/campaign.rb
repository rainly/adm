class Campaign < ActiveRecord::Base
	DEFAULT_TYPES=['ChargeCpt','ChargeCpm']
	
	belongs_to :charge, :polymorphic => true
	
	belongs_to :order
	
	has_many :targets
	
	has_many :display_zone

	
  has_and_belongs_to_many :ad_boards
end
