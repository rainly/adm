class CreatePublisherInfos < ActiveRecord::Migration
  def self.up
    create_table :publisher_infos do |t|
      t.string :name
      t.integer :owner_id
      t.integer :real_user_id
      t.integer :network_id

      t.timestamps
    end
  end

  def self.down
    drop_table :publisher_infos
  end
end
