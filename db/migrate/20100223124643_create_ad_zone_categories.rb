class CreateAdZoneCategories < ActiveRecord::Migration
  def self.up
    create_table :ad_zone_categories do |t|
      t.string :name
      t.string :owner_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ad_zone_categories
  end
end
