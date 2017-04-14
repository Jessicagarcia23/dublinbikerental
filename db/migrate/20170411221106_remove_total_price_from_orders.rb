class RemoveTotalPriceFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :total_price, :decimal
  end
end
