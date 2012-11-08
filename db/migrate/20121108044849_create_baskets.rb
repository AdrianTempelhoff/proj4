class CreateBaskets < ActiveRecord::Migration
  def change
    create_table :baskets do |t|
      t.integer :temp_basket_id
      t.integer :purchase_id

      t.timestamps
    end
  end
end
