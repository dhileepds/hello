class CreateReferenceData < ActiveRecord::Migration
  def change
    create_table :reference_data do |t|
      t.string :TYPE
      t.string :FSC
      t.string :NIN
      t.string :NSN
      t.string :RNFC_2920
      t.string :RNCC_2910
      t.string :RNVC_4780
      t.string :DAC_2640
      t.string :RNAAC_2900
      t.string :RNSC_2923
      t.string :RNJC_2750
      t.string :CAGE_CD_9250
      t.string :REF_NBR_3570
      t.string :NAME
      t.string :SADC_4672
      t.string :HCC_2579
      t.string :MSDS_ID_9076
      t.string :TEST
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
