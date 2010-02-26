class Target < ActiveRecord::Base
  belongs_to :campaign
  
  belongs_to :def, :class_name => "TargetDef"
end
