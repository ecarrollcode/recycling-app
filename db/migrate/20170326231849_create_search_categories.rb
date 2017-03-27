class CreateSearchCategories < ActiveRecord::Migration[5.0]
  def change
    drop_table :search_categories
    create_table :search_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
