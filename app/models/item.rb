class Item < ApplicationRecord
  self.table_name = 'Items'
  self.primary_key =  'item_id'
end
