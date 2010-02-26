class AdvertiserInfosController < ApplicationController
  active_scaffold do |config|
    config.columns = [:name, :network, :owner, :real_user]
  end
end
