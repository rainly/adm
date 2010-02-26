class CreateAdZoneStatuses < ActiveRecord::Migration
  def self.up
    create_table :ad_zone_statuses do |t|
      t.string :name

      t.timestamps
    end
    
    AdZoneStatus.create :name => '上线'
    AdZoneStatus.create :name => '下线'
  end

  def self.down
    drop_table :ad_zone_statuses
  end
end

