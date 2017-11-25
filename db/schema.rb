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

ActiveRecord::Schema.define(version: 20171125153241) do

  create_table "stamps", force: :cascade do |t|
    t.date "release_date"
    t.date "end_of_use"
    t.float "nominal_value"
    t.string "name"
    t.string "colour"
    t.string "place_of_printing"
    t.integer "amount_printed"
    t.string "artist"
    t.string "currency"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "stamp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stamp_id"], name: "index_taggings_on_stamp_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
