class City < ApplicationRecord
  self.table_name = 'Cities'
  self.primary_key =  'city_id'

  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  end
end
