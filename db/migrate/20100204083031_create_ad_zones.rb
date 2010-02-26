class CreateAdZones < ActiveRecord::Migration
  def self.up
    create_table :ad_zones do |t|
      t.integer :site_id
      t.integer :owner_id
      t.integer :category_id
      t.integer :charge_type_id
      t.integer :status_id
      t.string :name
      t.string :size
      t.string :description
      t.double :price
      
      t.timestamps
    end
  end

  def self.down
    drop_table :ad_zones
  end
end
