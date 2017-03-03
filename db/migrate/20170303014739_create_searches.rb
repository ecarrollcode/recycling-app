class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :text
      t.string :zip
      t.string :slug

      t.timestamps
    end
    add_index :searches, :slug, unique: true
  end
end
