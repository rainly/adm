class CreateOrderStatuses < ActiveRecord::Migration
  def self.up
    create_table :order_statuses do |t|
      t.string :value

      t.timestamps
    end
    
    OrderStatus.create :value => '上线'
    OrderStatus.create :value => '下线'
  end

  def self.down
    drop_table :order_statuses
  end
end

