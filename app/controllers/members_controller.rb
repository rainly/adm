class MembersController < ApplicationController

  layout "backend"
  
	active_scaffold{|config|
		config.columns = [:id, :name, :master, :comment]
		config.list.sorting = [{ :id => :asc }]
    config.columns[:master].actions_for_association_links.delete :new
	}
end
