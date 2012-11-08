class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :receipt_id
      t.integer :purchase_id

      t.timestamps
    end
  end
end
