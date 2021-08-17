# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_12_194818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dream_villagers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "villager_id"
  end

  create_table "personalities", force: :cascade do |t|
    t.string "name"
  end

  create_table "players", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "user_villagers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "villager_id"
  end

  create_table "villager_personalities", force: :cascade do |t|
    t.integer "personality_id"
    t.integer "villager_id"
  end

  create_table "villagers", force: :cascade do |t|
    t.string "name"
    t.string "birthday"
    t.string "gender"
    t.string "species"
    t.string "img_url"
  end

end
