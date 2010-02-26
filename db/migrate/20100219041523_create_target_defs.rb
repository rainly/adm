class CreateTargetDefs < ActiveRecord::Migration
  def self.up
    create_table :target_defs do |t|
      t.string :name
      t.string :data_type
      t.string :available_value

      t.timestamps
    end
    TargetDef.create :name => "地域", :data_type => "enum", :available_value => "浙江|江苏|上海"
    TargetDef.create :name => "性别", :data_type => "enum", :available_value => "男|女"
  end

  def self.down
    drop_table :target_defs
  end
end
