class CreateSourceData < ActiveRecord::Migration
  def change
    create_table :source_data do |t|
      t.string :FSC
      t.string :NIIN
      t.string :NSN
      t.string :SDC
      t.string :UI
      t.string :SHORT_NOMENCLATURE
      t.string :PART_NUMBER
      t.string :CAGEC
      t.string :EIC
      t.string :EI_FSC
      t.string :NIIN2
      t.string :MANUFACTURER_MAKE_MODEL
      t.string :REQ_QTY
      t.string :NAME
      t.string :END_ITEM_APPLICATION
      t.string :DIC
      t.string :DOC
      t.string :QTY
      t.string :PRICE
      t.string :FORCE_NAME
      t.string :STOCK_NUMBER
      t.string :SOS
      t.string :NUMBER_OF_PARTS_IN_SUPPLY
      t.string :MTC
      t.string :FILE_NAME
      t.string :NIIN_ECCMA
      t.string :FSC_ECCMA
      t.string :Name_Eccma
      t.string :COUNTRY_ECCMA
      t.string :SHRT_NM_2301_ECCMA
      t.string :INC_4080_ECCMA
      t.string :Invalid
      t.string :Matched

      t.timestamps null: false
    end
  end
end
