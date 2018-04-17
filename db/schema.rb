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

ActiveRecord::Schema.define(version: 20180417195252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "healths", force: :cascade do |t|
    t.bigint "user_id"
    t.index ["user_id"], name: "index_healths_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "coordinates", default: [], array: true
    t.string "state"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.bigint "location_id"
    t.string "placefips"
    t.string "tractfips"
    t.string "population"
    t.decimal "access_to_healthcare"
    t.decimal "arthritis_prevalence"
    t.decimal "binge_drinking_prevalence"
    t.decimal "high_blood_pressure_prevalence"
    t.decimal "cancer_prevalence"
    t.decimal "asthma_prevalence"
    t.decimal "current_smoking_prevalence"
    t.decimal "dental_visit_prevalence"
    t.decimal "diabetes_prevalence"
    t.decimal "high_cholesterol_prevalence"
    t.decimal "kidney_disease_prevalence"
    t.decimal "lack_of_physical_activity_prevalence"
    t.decimal "mammography_prevalence"
    t.decimal "bad_mental_health_prevalence"
    t.decimal "obesity_prevalence"
    t.decimal "pap_smear_prevalence"
    t.decimal "lack_of_sleep_prevalence"
    t.decimal "stroke_prevalence"
    t.decimal "teeth_loss_prevalence"
    t.decimal "heart_disease_prevalence"
    t.decimal "routine_checkup_prevalence"
    t.index ["location_id"], name: "index_neighborhoods_on_location_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "healths_id"
    t.string "content"
    t.string "answer"
    t.index ["healths_id"], name: "index_questions_on_healths_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "screen_name"
    t.string "uid"
    t.string "oauth_token"
    t.string "oauth_token_secret"
  end

  add_foreign_key "healths", "users"
  add_foreign_key "neighborhoods", "locations"
  add_foreign_key "questions", "healths", column: "healths_id"
end
