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

ActiveRecord::Schema.define(version: 20180415034519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

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
    t.string "healthcare_access"
    t.string "arthritis_prevelance"
    t.string "binge_drinking_prevelance"
    t.string "high_blood_pressure_prevelance"
    t.string "bp_medication_prevelance"
    t.string "cancer_prevelance"
    t.string "asthma_prevelance"
    t.string "current_smoking_prevelance"
    t.string "dental_visit_prevelance"
    t.string "diabetes_prevelance"
    t.string "high_cholesterol_prevelance"
    t.string "kidney_disease_prevelance"
    t.string "lack_of_physical_activity_prevelance"
    t.string "mammography_prevelance"
    t.string "bad_mental_health_prevelance"
    t.string "obesity_prevelance"
    t.string "pap_smear_prevelance"
    t.string "lack_sleep_prevelance"
    t.string "stroke_prevelance"
    t.string "teeth_loss_prevelance"
    t.string "placefips"
    t.string "tractfips"
    t.string "population"
    t.string "core_prevention_women"
    t.string "core_prevention_men"
    t.string "heart_disease_prevelance"
    t.string "routine_checkup_prevelance"
    t.index ["location_id"], name: "index_neighborhoods_on_location_id"
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

  add_foreign_key "neighborhoods", "locations"
end
