class CreateCampaigns < ActiveRecord::Migration
  def self.up
    create_table :campaigns do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :charge_type
      t.integer :charge_id
      t.integer :order_id

      t.timestamps
    end
  end

  def self.down
    drop_table :campaigns
  end
end
