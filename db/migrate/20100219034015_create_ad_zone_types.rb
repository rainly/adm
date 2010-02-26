class CreateAdZoneTypes < ActiveRecord::Migration
  def self.up
    create_table :ad_zone_types do |t|
      t.string :name

      t.timestamps
    end
    AdZoneType.create :name => "CPT"
    AdZoneType.create :name => "CPM"
    AdZoneType.create :name => "CPT/CPM"
  end

  def self.down
    drop_table :ad_zone_types
  end
end
