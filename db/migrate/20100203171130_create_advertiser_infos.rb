class CreateAdvertiserInfos < ActiveRecord::Migration
  def self.up
    create_table :advertiser_infos do |t|
      t.integer :owner_id
      t.integer :real_user_id
      t.integer :network_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :advertiser_infos
  end
end
