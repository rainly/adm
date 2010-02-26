class CreateChargeCpts < ActiveRecord::Migration
  def self.up
    create_table :charge_cpts do |t|
      t.integer :unit_price
      t.float :discount

      t.timestamps
    end
  end

  def self.down
    drop_table :charge_cpts
  end
end
