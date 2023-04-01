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

ActiveRecord::Schema[7.0].define(version: 2023_04_01_120322) do
  create_table "countries", force: :cascade do |t|
    t.string "country_iso_code"
    t.string "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "department_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joint_table_movie_companies", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "production_company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_joint_table_movie_companies_on_movie_id"
    t.index ["production_company_id"], name: "index_joint_table_movie_companies_on_production_company_id"
  end

  create_table "joint_table_production_countries", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_joint_table_production_countries_on_country_id"
    t.index ["movie_id"], name: "index_joint_table_production_countries_on_movie_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "keyword_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "language_roles", force: :cascade do |t|
    t.string "language_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "language_code"
    t.string "language_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "budget"
    t.string "homepage"
    t.text "overview"
    t.integer "popularity"
    t.datetime "release_data"
    t.integer "revenue"
    t.integer "runtime"
    t.string "movie_status"
    t.string "tagline"
    t.integer "votes_avg"
    t.integer "votes_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "person_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_companies", force: :cascade do |t|
    t.string "company_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_countries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "joint_table_movie_companies", "movies"
  add_foreign_key "joint_table_movie_companies", "production_companies"
  add_foreign_key "joint_table_production_countries", "countries"
  add_foreign_key "joint_table_production_countries", "movies"
end
