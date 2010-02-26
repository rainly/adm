class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :name
      t.string :master_id
      t.string :company_name
      t.string :telephone
      t.string :mobile_no
      t.string :address
      t.string :email
      t.string :comment

      t.timestamps
    end
    
  end

  def self.down
    drop_table :members
  end
end
