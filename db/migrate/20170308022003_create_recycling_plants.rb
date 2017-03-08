class CreateRecyclingPlants < ActiveRecord::Migration[5.0]
  def change
    create_table :recycling_plants do |t|

      t.timestamps
    end
  end
end
