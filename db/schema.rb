# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151208084405) do

  create_table "a_segments", id: false, force: :cascade do |t|
    t.integer  "id",                 limit: 4,   null: false
    t.string   "TYPE",               limit: 255
    t.string   "FSC",                limit: 255
    t.string   "NIN",                limit: 255
    t.string   "NSN",                limit: 255
    t.string   "FSG_3994",           limit: 255
    t.string   "FSC_WI_FSG_3996",    limit: 255
    t.string   "NCB_CD_4130",        limit: 255
    t.string   "I_I_NBR_4131",       limit: 255
    t.string   "FIIG_4065",          limit: 255
    t.string   "INC_4080",           limit: 255
    t.string   "SHRT_NM_2301",       limit: 255
    t.string   "NAIN_5020",          limit: 255
    t.string   "CRITL_CD_FIIG_3843", limit: 255
    t.string   "TYP_II_4820",        limit: 255
    t.string   "RPDMRC_4765",        limit: 255
    t.string   "DEMIL_CD_0167",      limit: 255
    t.string   "DT_NIIN_ASGMT_2180", limit: 255
    t.string   "HMIC_0865",          limit: 255
    t.string   "ESD_EMI_CD_2043",    limit: 255
    t.string   "PMIC_0802",          limit: 255
    t.string   "ADPEC_0801",         limit: 255
    t.string   "TEST",               limit: 255
    t.string   "Concept_ID",         limit: 50,  null: false
    t.string   "definition_ID",      limit: 50,  null: false
    t.string   "Term_ID",            limit: 50,  null: false
    t.string   "Term",               limit: 255, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "a_segments", ["NSN"], name: "NSN", using: :btree

  create_table "c_segments", id: false, force: :cascade do |t|
    t.integer  "id",           limit: 4,   null: false
    t.string   "TYPE",         limit: 255
    t.string   "FSC",          limit: 255
    t.string   "NIN",          limit: 255
    t.string   "NSN",          limit: 255
    t.string   "RNFC_2920",    limit: 255
    t.string   "RNCC_2910",    limit: 255
    t.string   "RNVC_4780",    limit: 255
    t.string   "DAC_2640",     limit: 255
    t.string   "RNAAC_2900",   limit: 255
    t.string   "RNSC_2923",    limit: 255
    t.string   "RNJC_2750",    limit: 255
    t.string   "CAGE_CD_9250", limit: 255
    t.string   "REF_NBR_3570", limit: 255
    t.string   "SADC_4672",    limit: 255
    t.string   "HCC_2579",     limit: 255
    t.string   "MSDS_ID_9076", limit: 255
    t.string   "TEST",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "c_segments", ["NSN"], name: "NSN", using: :btree

  create_table "cmms", force: :cascade do |t|
    t.string   "FSC",                       limit: 255
    t.string   "NIIN",                      limit: 255
    t.string   "NSN",                       limit: 255
    t.string   "SDC",                       limit: 255
    t.string   "UI",                        limit: 255
    t.string   "SHORT_NOMENCLATURE",        limit: 255
    t.string   "PART_NUMBER",               limit: 255
    t.string   "CAGEC",                     limit: 255
    t.string   "EIC",                       limit: 255
    t.string   "EI_FSC",                    limit: 255
    t.string   "NIIN2",                     limit: 255
    t.string   "MANUFACTURER_MAKE_MODEL",   limit: 255
    t.string   "REQ_QTY",                   limit: 255
    t.string   "NAME",                      limit: 255
    t.string   "END_ITEM_APPLICATION",      limit: 255
    t.string   "DIC",                       limit: 255
    t.string   "DOC",                       limit: 255
    t.string   "QTY",                       limit: 255
    t.string   "PRICE",                     limit: 255
    t.string   "FORCE_NAME",                limit: 255
    t.string   "STOCK_NUMBER",              limit: 255
    t.string   "SOS",                       limit: 255
    t.string   "NUMBER_OF_PARTS_IN_SUPPLY", limit: 255
    t.string   "MTC",                       limit: 255
    t.string   "FILE_NAME",                 limit: 255
    t.string   "NIIN_ECCMA",                limit: 255
    t.string   "FSC_ECCMA",                 limit: 255
    t.string   "COUNTRY_ECCMA",             limit: 255
    t.string   "SHRT_NM_2301_ECCMA",        limit: 255
    t.string   "INC_4080_ECCMA",            limit: 255
    t.string   "Invalid",                   limit: 10,   null: false
    t.string   "Matched",                   limit: 10,   null: false
    t.string   "Name_Eccma",                limit: 5000, null: false
    t.string   "Status",                    limit: 100,  null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "FSC_ECCMA1",                limit: 5,    null: false
    t.string   "NIIN_ECCMA1",               limit: 50,   null: false
  end

  add_index "cmms", ["NSN"], name: "NSN", using: :btree
  add_index "cmms", ["NSN"], name: "NSN_2", using: :btree

  create_table "cmms_demos", force: :cascade do |t|
    t.string   "FSC",                       limit: 255
    t.string   "NIIN",                      limit: 255
    t.string   "NSN",                       limit: 255
    t.string   "SDC",                       limit: 255
    t.string   "UI",                        limit: 255
    t.string   "SHORT_NOMENCLATURE",        limit: 255
    t.string   "PART_NUMBER",               limit: 255
    t.string   "CAGEC",                     limit: 255
    t.string   "EIC",                       limit: 255
    t.string   "EI_FSC",                    limit: 255
    t.string   "NIIN2",                     limit: 255
    t.string   "MANUFACTURER_MAKE_MODEL",   limit: 255
    t.string   "REQ_QTY",                   limit: 255
    t.string   "NAME",                      limit: 255
    t.string   "END_ITEM_APPLICATION",      limit: 255
    t.string   "DIC",                       limit: 255
    t.string   "DOC",                       limit: 255
    t.string   "QTY",                       limit: 255
    t.string   "PRICE",                     limit: 255
    t.string   "FORCE_NAME",                limit: 255
    t.string   "STOCK_NUMBER",              limit: 255
    t.string   "SOS",                       limit: 255
    t.string   "NUMBER_OF_PARTS_IN_SUPPLY", limit: 255
    t.string   "MTC",                       limit: 255
    t.string   "FILE_NAME",                 limit: 255
    t.string   "NIIN_ECCMA",                limit: 255
    t.string   "FSC_ECCMA",                 limit: 255
    t.string   "COUNTRY_ECCMA",             limit: 255
    t.string   "SHRT_NM_2301_ECCMA",        limit: 255
    t.string   "INC_4080_ECCMA",            limit: 255
    t.string   "Invalid",                   limit: 10,   null: false
    t.string   "Matched",                   limit: 10,   null: false
    t.string   "Name_Eccma",                limit: 5000, null: false
    t.string   "Status",                    limit: 100,  null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "cmms_demos", ["NSN"], name: "NSN", using: :btree
  add_index "cmms_demos", ["NSN"], name: "NSN_2", using: :btree

  create_table "factories_test", id: false, force: :cascade do |t|
    t.string  "FPKID",                  limit: 255,      default: "", null: false
    t.integer "Factory_ID",             limit: 4
    t.text    "Factory_Name",           limit: 16777215
    t.text    "E_Factory_Name_en",      limit: 16777215,              null: false
    t.string  "Factory_Website",        limit: 255
    t.text    "Physical_Address",       limit: 16777215
    t.text    "City",                   limit: 16777215
    t.text    "District",               limit: 16777215
    t.string  "Postal_Code",            limit: 255
    t.string  "POB",                    limit: 255
    t.text    "POB_City",               limit: 16777215
    t.string  "POB_PC",                 limit: 255
    t.string  "State_Province_code",    limit: 255
    t.text    "License_Status",         limit: 16777215
    t.string  "Ownership_Org_ID",       limit: 255
    t.string  "Responsible_Party_Name", limit: 255
    t.string  "RP_title",               limit: 255
    t.string  "RP_Email",               limit: 255
    t.string  "TP_Name",                limit: 255
    t.string  "TP_Title",               limit: 255,                   null: false
    t.string  "TP_Email",               limit: 255,                   null: false
    t.string  "Construction_Status",    limit: 255
    t.string  "Land_Type",              limit: 255
    t.string  "Site_Land_Area_SQM",     limit: 255
    t.string  "Industrial_city",        limit: 255
    t.string  "Ind_Land_No",            limit: 255
    t.string  "GPS_Coordinates",        limit: 255,                   null: false
    t.string  "Block_No",               limit: 255
    t.string  "No_of_Employees",        limit: 255
    t.string  "Language",               limit: 255
    t.string  "tmp_file_source",        limit: 255
  end

  create_table "nsnmrcxs", force: :cascade do |t|
    t.string   "FSC",           limit: 255
    t.string   "NIIN",          limit: 255
    t.string   "NSN",           limit: 255
    t.string   "MRC",           limit: 255
    t.string   "Concept_ID",    limit: 255, null: false
    t.string   "definition_ID", limit: 50,  null: false
    t.string   "Term_ID",       limit: 255, null: false
    t.string   "Term",          limit: 255, null: false
    t.string   "DMRC",          limit: 255, null: false
    t.string   "RMRC",          limit: 255
    t.string   "DMRC_old",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "nsnmrcxs", ["Concept_ID"], name: "Concept_ID", using: :btree
  add_index "nsnmrcxs", ["Concept_ID"], name: "Concept_ID_2", using: :btree
  add_index "nsnmrcxs", ["MRC"], name: "MRC", using: :btree
  add_index "nsnmrcxs", ["MRC"], name: "MRC_2", using: :btree
  add_index "nsnmrcxs", ["NSN"], name: "NSN", using: :btree

  create_table "reference_data1", id: false, force: :cascade do |t|
    t.integer  "id",           limit: 4,   null: false
    t.string   "TYPE",         limit: 255
    t.string   "FSC",          limit: 255
    t.string   "NIN",          limit: 255
    t.string   "NSN",          limit: 255
    t.string   "RNFC_2920",    limit: 255
    t.string   "RNCC_2910",    limit: 255
    t.string   "RNVC_4780",    limit: 255
    t.string   "DAC_2640",     limit: 255
    t.string   "RNAAC_2900",   limit: 255
    t.string   "RNSC_2923",    limit: 255
    t.string   "RNJC_2750",    limit: 255
    t.string   "CAGE_CD_9250", limit: 255
    t.string   "REF_NBR_3570", limit: 255
    t.string   "SADC_4672",    limit: 255
    t.string   "HCC_2579",     limit: 255
    t.string   "MSDS_ID_9076", limit: 255
    t.string   "TEST",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "reference_data1", ["NSN"], name: "NSN", using: :btree

  create_table "source_data", force: :cascade do |t|
    t.string   "FSC",                       limit: 255
    t.string   "NIIN",                      limit: 255
    t.string   "NSN",                       limit: 255
    t.string   "SDC",                       limit: 255
    t.string   "UI",                        limit: 255
    t.string   "SHORT_NOMENCLATURE",        limit: 255
    t.string   "PART_NUMBER",               limit: 255
    t.string   "CAGEC",                     limit: 255
    t.string   "EIC",                       limit: 255
    t.string   "EI_FSC",                    limit: 255
    t.string   "NIIN2",                     limit: 255
    t.string   "MANUFACTURER_MAKE_MODEL",   limit: 255
    t.string   "REQ_QTY",                   limit: 255
    t.string   "NAME",                      limit: 255
    t.string   "END_ITEM_APPLICATION",      limit: 255
    t.string   "DIC",                       limit: 255
    t.string   "DOC",                       limit: 255
    t.string   "QTY",                       limit: 255
    t.string   "PRICE",                     limit: 255
    t.string   "FORCE_NAME",                limit: 255
    t.string   "STOCK_NUMBER",              limit: 255
    t.string   "SOS",                       limit: 255
    t.string   "NUMBER_OF_PARTS_IN_SUPPLY", limit: 255
    t.string   "MTC",                       limit: 255
    t.string   "FILE_NAME",                 limit: 255
    t.string   "NIIN_ECCMA",                limit: 255
    t.string   "FSC_ECCMA",                 limit: 255
    t.string   "COUNTRY_ECCMA",             limit: 255
    t.string   "SHRT_NM_2301_ECCMA",        limit: 255
    t.string   "INC_4080_ECCMA",            limit: 255
    t.string   "Invalid",                   limit: 10,   null: false
    t.string   "Matched",                   limit: 10,   null: false
    t.string   "Name_Eccma",                limit: 5000, null: false
    t.string   "Status",                    limit: 100,  null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "FSC_ECCMA1",                limit: 5,    null: false
    t.string   "NIIN_ECCMA1",               limit: 50,   null: false
  end

  add_index "source_data", ["NSN"], name: "NSN", using: :btree
  add_index "source_data", ["NSN"], name: "NSN_2", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
