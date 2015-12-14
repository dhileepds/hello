require 'test_helper'

class SourceDataControllerTest < ActionController::TestCase
  setup do
    @source_datum = source_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:source_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create source_datum" do
    assert_difference('SourceDatum.count') do
      post :create, source_datum: { CAGEC: @source_datum.CAGEC, COUNTRY_ECCMA: @source_datum.COUNTRY_ECCMA, DIC: @source_datum.DIC, DOC: @source_datum.DOC, EIC: @source_datum.EIC, EI_FSC: @source_datum.EI_FSC, END_ITEM_APPLICATION: @source_datum.END_ITEM_APPLICATION, FILE_NAME: @source_datum.FILE_NAME, FORCE_NAME: @source_datum.FORCE_NAME, FSC: @source_datum.FSC, FSC_ECCMA: @source_datum.FSC_ECCMA, INC_4080_ECCMA: @source_datum.INC_4080_ECCMA, Invalid: @source_datum.Invalid, MANUFACTURER_MAKE_MODEL: @source_datum.MANUFACTURER_MAKE_MODEL, MTC: @source_datum.MTC, Matched: @source_datum.Matched, NAME: @source_datum.NAME, NIIN2: @source_datum.NIIN2, NIIN: @source_datum.NIIN, NIIN_ECCMA: @source_datum.NIIN_ECCMA, NSN: @source_datum.NSN, NUMBER_OF_PARTS_IN_SUPPLY: @source_datum.NUMBER_OF_PARTS_IN_SUPPLY, Name_Eccma: @source_datum.Name_Eccma, PART_NUMBER: @source_datum.PART_NUMBER, PRICE: @source_datum.PRICE, QTY: @source_datum.QTY, REQ_QTY: @source_datum.REQ_QTY, SDC: @source_datum.SDC, SHORT_NOMENCLATURE: @source_datum.SHORT_NOMENCLATURE, SHRT_NM_2301_ECCMA: @source_datum.SHRT_NM_2301_ECCMA, SOS: @source_datum.SOS, STOCK_NUMBER: @source_datum.STOCK_NUMBER, UI: @source_datum.UI }
    end

    assert_redirected_to source_datum_path(assigns(:source_datum))
  end

  test "should show source_datum" do
    get :show, id: @source_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @source_datum
    assert_response :success
  end

  test "should update source_datum" do
    patch :update, id: @source_datum, source_datum: { CAGEC: @source_datum.CAGEC, COUNTRY_ECCMA: @source_datum.COUNTRY_ECCMA, DIC: @source_datum.DIC, DOC: @source_datum.DOC, EIC: @source_datum.EIC, EI_FSC: @source_datum.EI_FSC, END_ITEM_APPLICATION: @source_datum.END_ITEM_APPLICATION, FILE_NAME: @source_datum.FILE_NAME, FORCE_NAME: @source_datum.FORCE_NAME, FSC: @source_datum.FSC, FSC_ECCMA: @source_datum.FSC_ECCMA, INC_4080_ECCMA: @source_datum.INC_4080_ECCMA, Invalid: @source_datum.Invalid, MANUFACTURER_MAKE_MODEL: @source_datum.MANUFACTURER_MAKE_MODEL, MTC: @source_datum.MTC, Matched: @source_datum.Matched, NAME: @source_datum.NAME, NIIN2: @source_datum.NIIN2, NIIN: @source_datum.NIIN, NIIN_ECCMA: @source_datum.NIIN_ECCMA, NSN: @source_datum.NSN, NUMBER_OF_PARTS_IN_SUPPLY: @source_datum.NUMBER_OF_PARTS_IN_SUPPLY, Name_Eccma: @source_datum.Name_Eccma, PART_NUMBER: @source_datum.PART_NUMBER, PRICE: @source_datum.PRICE, QTY: @source_datum.QTY, REQ_QTY: @source_datum.REQ_QTY, SDC: @source_datum.SDC, SHORT_NOMENCLATURE: @source_datum.SHORT_NOMENCLATURE, SHRT_NM_2301_ECCMA: @source_datum.SHRT_NM_2301_ECCMA, SOS: @source_datum.SOS, STOCK_NUMBER: @source_datum.STOCK_NUMBER, UI: @source_datum.UI }
    assert_redirected_to source_datum_path(assigns(:source_datum))
  end

  test "should destroy source_datum" do
    assert_difference('SourceDatum.count', -1) do
      delete :destroy, id: @source_datum
    end

    assert_redirected_to source_data_path
  end
end
