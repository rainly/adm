# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)


  admin = Member.create(:name => 'admin', :comment => '管理员')
  lifu = Member.create(:name => 'lifu', :comment => '李福')

  advertiser = Member.create(:name => '小二甲', :master => admin, :comment => 'advertiser')
  publisher = Member.create(:name => '小二乙', :master => lifu, :comment => 'publisher')

  Network.create(
    :name => '黑马联盟', :master => Member.masters.first 
  ).advertisers << AdvertiserInfo.create(
    :name => "广告主1",
    :owner => advertiser,:real_user => advertiser
  ) << AdvertiserInfo.create(
    :name => "广告主2",
    :owner => advertiser,:real_user => advertiser
  )

  Network.create(
    :name => '4A公司', :master => Member.masters.last
  ).publishers << PublisherInfo.create(
    :name => "网站主1",
    :owner => publisher,:real_user => publisher
  ) << PublisherInfo.create(
    :name => "网站主2",
    :owner => publisher,:real_user => publisher
  )

  %{男人 女人 亲子 娱乐}.each{|name|
    AdZoneCategory.create :name => name
  }
  AdZoneCategory.create :name => '男人'
