class CreateTempBaskets < ActiveRecord::Migration
  def change
    create_table :temp_baskets do |t|
      t.integer :basket_id

      t.timestamps
    end
  end
end
