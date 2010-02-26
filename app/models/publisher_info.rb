class PublisherInfo < ActiveRecord::Base
  belongs_to :owner, :class_name => 'Member'
  belongs_to :real_user, :class_name => "Member"
  belongs_to :network

end
