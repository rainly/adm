class NetworksController < ApplicationController
  layout "backend"

  active_scaffold do|config|
    config.list.columns = [:name, :master]
    config.columns = [:name, :master, :advertisers, :publishers]
  end
end
