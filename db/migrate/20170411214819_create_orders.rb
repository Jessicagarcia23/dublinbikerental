class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :bike_id
      t.decimal :total_price
      t.string :email
      t.date :start_date
      t.integer :days

      t.timestamps null: false
    end
  end
end
