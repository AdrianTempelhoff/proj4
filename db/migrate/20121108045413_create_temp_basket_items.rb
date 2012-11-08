class CreateTempBasketItems < ActiveRecord::Migration
  def change
    create_table :temp_basket_items do |t|
      t.integer :temp_basket_id
      t.integer :item_id

      t.timestamps
    end
  end
end
