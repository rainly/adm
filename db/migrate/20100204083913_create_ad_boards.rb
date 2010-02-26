class CreateAdBoards < ActiveRecord::Migration
  def self.up
    create_table :ad_boards do |t|
      t.string :title
      t.string :size
      t.integer :owner_id
      t.string :click_url
      t.string :image_path
      t.string :text
      t.string :js_script
      t.string :alt

      t.timestamps
    end
    
    create_table :ad_boards_campaigns do |t|
      t.integer :campaign_id
      t.integer :ad_board_id
    end
  end

  def self.down
    drop_table :ad_boards
    drop_table :ad_boards_campaigns
  end
end
