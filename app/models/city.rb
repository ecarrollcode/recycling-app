class City < ApplicationRecord
  self.table_name = 'Cities'
  self.primary_key =  'city_id'
end
