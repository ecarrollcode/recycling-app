# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170303014739) do

  create_table "Categories", primary_key: "category_id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 40,  null: false
    t.string "info", limit: 100
  end

  create_table "Cities", primary_key: "city_id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name",       limit: 30
    t.string "website",    limit: 200
    t.string "gps_coords", limit: 50
  end

  create_table "Items", primary_key: "item_id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name",             limit: 70, null: false
    t.string "category",         limit: 70
    t.string "bin",              limit: 70, null: false
    t.string "information",      limit: 70
    t.string "cities",           limit: 70
    t.string "recycling_plants", limit: 70
  end

  create_table "MailingList", primary_key: "user_id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name",  limit: 40, null: false
    t.string "email", limit: 70
  end

  create_table "RecyclingPlants", primary_key: "plant_id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name",        limit: 50,  null: false
    t.string "plant_hours", limit: 100
    t.string "gps_coords",  limit: 50
  end

end
