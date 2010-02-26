module AdvertiserInfosHelper
  def network_form_column(record, input_name)
    select record, input_name, Network.all.collect{|item|
      [item.name,item.id]
    }
  end
end

