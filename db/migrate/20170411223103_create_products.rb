class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :type
      t.string :description
      t.decimal :price_product

      t.timestamps null: false
    end
  end
end
