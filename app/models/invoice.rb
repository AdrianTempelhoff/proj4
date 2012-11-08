class Invoice < ActiveRecord::Base
  attr_accessible :purchase_id, :receipt_id
end
