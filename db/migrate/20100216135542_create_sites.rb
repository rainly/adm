class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :name
      t.integer :publisher_info_id
      t.integer :category_id
      t.integer :owner_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
