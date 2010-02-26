class CreateAdBoardsCampaigns < ActiveRecord::Migration
  def self.up
    create_table :ad_boards_campaigns do |t|
      t.integer :campaign_id
      t.integer :ad_board_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ad_boards_campaigns
  end
end
