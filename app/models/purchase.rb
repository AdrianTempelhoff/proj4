class Purchase < ActiveRecord::Base
  attr_accessible :basket_id, :invoice_id, :user_id
end
