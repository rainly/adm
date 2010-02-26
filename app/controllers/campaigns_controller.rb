class CampaignsController < ApplicationController
	active_scaffold{|config|
		config.list.columns = [:name,:start_date,:end_date]
	}
end
