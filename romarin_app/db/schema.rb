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

ActiveRecord::Schema.define(version: 20160928142037) do

  create_table "basic_app_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "goods_and_service_eng"
    t.string   "goods_and_service_fr"
    t.string   "goods_and_service_"
    t.string   "reg_date"
    t.string   "reg_no"
    t.string   "desig_under_prot"
    t.string   "desig_under_prot_9sexies"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "cancel_of_licenses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "gaz_no"
    t.string   "int_off"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cens", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "gaz_no"
    t.string   "int_office"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "disclaimers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "gaz_no"
    t.string   "int_office"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "div_of_mergers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "gaz_no"
    t.string   "int_office"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "enns", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "gaz_no"
    t.string   "int_office"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "holders_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "not_lang"
    t.string   "name"
    t.string   "address"
    t.string   "entitlement"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "color"
    t.string   "type"
    t.string   "name"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "judicial_actions_in_oos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "doc_id"
    t.string   "gaz_no"
    t.string   "int_off"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "marks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "i_reg_no"
    t.integer  "original_language"
    t.boolean  "billing"
    t.string   "i_reg_date"
    t.string   "exp_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "oocd"
  end

  create_table "non_renewal_of_certain_contracting_parties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "designated_contracting_party_code"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "other_ceasing_effect_after_5_years", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "doc_id"
    t.string   "gaz_no"
    t.string   "int_off"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "partial_ceasing_effects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "doc_id"
    t.string   "gaz_no"
    t.string   "int_off"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "partial_refusals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "int_office"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.string   "original_language"
    t.string   "good_and_service_limited_to"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "partial_trans_ownerships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "all_goods_ser_indi"
    t.string   "all_off_indi"
    t.string   "gaz_no"
    t.string   "int_office"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "renewels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.string   "not_date"
    t.string   "gaz_no"
    t.string   "pub_date"
    t.string   "desig_u_agree"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "repr_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "address"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "req_for_review_exps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "gaz_no"
    t.string   "int_off"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "req_for_review_lapseds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "gaz_no"
    t.string   "int_off"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "req_for_review_withdrawns", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "gaz_no"
    t.string   "int_off"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "total_ceasing_effects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "doc_id"
    t.string   "gaz_no"
    t.string   "int_off"
    t.string   "not_date"
    t.string   "o_gaz_no"
    t.string   "o_pub_date"
    t.string   "pub_date"
    t.string   "eff_reg_date"
    t.string   "rec_reg_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "total_invalidations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "rec_reg_date"
    t.string   "not_date"
    t.string   "eff_reg_date"
    t.string   "gaz_no"
    t.string   "pub_date"
    t.string   "int_office"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "update_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
