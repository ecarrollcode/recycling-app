class Item < ApplicationRecord
  self.table_name = 'Items'
  self.primary_key =  'item_id'

  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  end
end
