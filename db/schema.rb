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

ActiveRecord::Schema[7.1].define(version: 2024_04_12_062830) do
  create_table "approvals", force: :cascade do |t|
    t.string "s_no"
    t.string "office_name"
    t.string "application_number"
    t.string "application_date"
    t.string "registration_number"
    t.string "owner_name"
    t.string "class_type"
    t.string "vehicle_class"
    t.string "verification_string"
    t.string "verification_by"
    t.string "approval_date"
    t.string "approved_by"
    t.string "hsrp_fitment_date"
    t.string "data_pull_by_vendor_date"
    t.string "data_available_for_printing"
    t.string "kms_done_date"
    t.string "rc_print_date"
    t.string "dispatch_date"
    t.string "dispatch_tracking_id"
    t.string "receipt_no"
    t.string "receipt_string"
    t.string "payment_mode"
    t.string "instrument_number"
    t.string "fee"
    t.string "tax"
    t.string "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
