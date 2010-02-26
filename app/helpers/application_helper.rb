# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def owner_form_column(record, input_name)
    select 'record', 'owner', Member.subusers.all.collect{|item|
      [item.name,item.id]
    }
  end
  def real_user_form_column(record, input_name)
    select 'record', 'real_user', Member.subusers.all.collect{|item|
      [item.name,item.id]
    }
  end
end
