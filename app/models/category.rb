class Category < ApplicationRecord
  self.table_name = 'Categories'
  self.primary_key =  'category_id'

  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  end
end
