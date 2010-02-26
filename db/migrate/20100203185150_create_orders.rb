class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :name
      t.integer :advertiser_id
      t.integer :owner_id
      t.integer :status_id
      t.date :start_date
      t.date :end_date
      t.string :referer
      t.integer :weight
      t.string :comment
      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
