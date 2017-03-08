class RecyclingPlant < ApplicationRecord
  self.table_name = 'recycling_plants'
  self.primary_key =  'plant_id'
end
