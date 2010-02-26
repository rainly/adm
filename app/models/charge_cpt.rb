class ChargeCpt < ActiveRecord::Base
	has_one :campaign, :as => :displayable
end
