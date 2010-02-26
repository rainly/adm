class CreateSiteCategories < ActiveRecord::Migration
  def self.up
    create_table :site_categories do |t|
      t.string :name
      t.integer :owner_id

      t.timestamps
    end
  end

  def self.down
    drop_table :site_categories
  end
end
