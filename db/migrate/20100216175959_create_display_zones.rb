class CreateDisplayZones < ActiveRecord::Migration
  def self.up
    create_table :display_zones do |t|
      t.integer :campaign_id
      t.integer :ad_zone_id
      t.string :expression
      t.string :name
      t.integer :owner_id

      t.timestamps
    end
  end

  def self.down
    drop_table :display_zones
  end
end
