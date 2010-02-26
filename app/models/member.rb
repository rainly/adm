class Member < ActiveRecord::Base

  belongs_to :master, :class_name => "Member"

  has_many :members
  
  named_scope :masters, :conditions => { :master_id => nil }

  named_scope :subusers, :conditions => [ 'master_id not null' ]
  
  named_scope :publishers, :conditions => { :comment => 'publisher' }

  named_scope :advertisers, :conditions => { :comment => 'advertiser' }
end
