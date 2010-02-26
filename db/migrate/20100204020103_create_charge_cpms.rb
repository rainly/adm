class CreateChargeCpms < ActiveRecord::Migration
  def self.up
    create_table :charge_cpms do |t|
      t.integer :unit_price
      t.float :discount
      t.integer :total_budget
      t.integer :priority
      t.integer :daily_threshold

      t.timestamps
    end
  end

  def self.down
    drop_table :charge_cpms
  end
end
