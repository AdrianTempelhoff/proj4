class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :invoice_id

      t.timestamps
    end
  end
end
