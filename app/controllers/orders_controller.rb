class OrdersController < ApplicationController
  active_scaffold do |config|
    config.list.columns = [:name, :advertiser, :start_date, :end_date, :owner, :status]
  end
end
