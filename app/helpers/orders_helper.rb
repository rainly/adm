module OrdersHelper

  def status_form_column(record, input_name)
    select record, input_name, OrderStatus.all.collect{|item|
      [item.value,item.id]    
    }
  end

  def advertiser_form_column(record, input_name)
    select record, input_name, AdvertiserInfo.all.collect{|item|
      [item.name,item.id]
    }
  end
end
