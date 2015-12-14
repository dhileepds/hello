require 'test_helper'

class SourcedataControllerTest < ActionController::TestCase
  setup do
    @sourcedatum = sourcedata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sourcedata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sourcedatum" do
    assert_difference('Sourcedatum.count') do
      post :create, sourcedatum: { CAGEC: @sourcedatum.CAGEC, COUNTRY_ECCMA: @sourcedatum.COUNTRY_ECCMA, DIC: @sourcedatum.DIC, DOC: @sourcedatum.DOC, EIC: @sourcedatum.EIC, EI_FSC: @sourcedatum.EI_FSC, END_ITEM_APPLICATION: @sourcedatum.END_ITEM_APPLICATION, FILE_NAME: @sourcedatum.FILE_NAME, FORCE_NAME: @sourcedatum.FORCE_NAME, FSC: @sourcedatum.FSC, FSC_ECCMA: @sourcedatum.FSC_ECCMA, INC_4080_ECCMA: @sourcedatum.INC_4080_ECCMA, Invalid: @sourcedatum.Invalid, MANUFACTURER_MAKE_MODEL: @sourcedatum.MANUFACTURER_MAKE_MODEL, MTC: @sourcedatum.MTC, Matched: @sourcedatum.Matched, NAME: @sourcedatum.NAME, NIIN2: @sourcedatum.NIIN2, NIIN: @sourcedatum.NIIN, NIIN_ECCMA: @sourcedatum.NIIN_ECCMA, NSN: @sourcedatum.NSN, NUMBER_OF_PARTS_IN_SUPPLY: @sourcedatum.NUMBER_OF_PARTS_IN_SUPPLY, Name_Eccma: @sourcedatum.Name_Eccma, PART_NUMBER: @sourcedatum.PART_NUMBER, PRICE: @sourcedatum.PRICE, QTY: @sourcedatum.QTY, REQ_QTY: @sourcedatum.REQ_QTY, SDC: @sourcedatum.SDC, SHORT_NOMENCLATURE: @sourcedatum.SHORT_NOMENCLATURE, SHRT_NM_2301_ECCMA: @sourcedatum.SHRT_NM_2301_ECCMA, SOS: @sourcedatum.SOS, STOCK_NUMBER: @sourcedatum.STOCK_NUMBER, UI: @sourcedatum.UI }
    end

    assert_redirected_to sourcedatum_path(assigns(:sourcedatum))
  end

  test "should show sourcedatum" do
    get :show, id: @sourcedatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sourcedatum
    assert_response :success
  end

  test "should update sourcedatum" do
    patch :update, id: @sourcedatum, sourcedatum: { CAGEC: @sourcedatum.CAGEC, COUNTRY_ECCMA: @sourcedatum.COUNTRY_ECCMA, DIC: @sourcedatum.DIC, DOC: @sourcedatum.DOC, EIC: @sourcedatum.EIC, EI_FSC: @sourcedatum.EI_FSC, END_ITEM_APPLICATION: @sourcedatum.END_ITEM_APPLICATION, FILE_NAME: @sourcedatum.FILE_NAME, FORCE_NAME: @sourcedatum.FORCE_NAME, FSC: @sourcedatum.FSC, FSC_ECCMA: @sourcedatum.FSC_ECCMA, INC_4080_ECCMA: @sourcedatum.INC_4080_ECCMA, Invalid: @sourcedatum.Invalid, MANUFACTURER_MAKE_MODEL: @sourcedatum.MANUFACTURER_MAKE_MODEL, MTC: @sourcedatum.MTC, Matched: @sourcedatum.Matched, NAME: @sourcedatum.NAME, NIIN2: @sourcedatum.NIIN2, NIIN: @sourcedatum.NIIN, NIIN_ECCMA: @sourcedatum.NIIN_ECCMA, NSN: @sourcedatum.NSN, NUMBER_OF_PARTS_IN_SUPPLY: @sourcedatum.NUMBER_OF_PARTS_IN_SUPPLY, Name_Eccma: @sourcedatum.Name_Eccma, PART_NUMBER: @sourcedatum.PART_NUMBER, PRICE: @sourcedatum.PRICE, QTY: @sourcedatum.QTY, REQ_QTY: @sourcedatum.REQ_QTY, SDC: @sourcedatum.SDC, SHORT_NOMENCLATURE: @sourcedatum.SHORT_NOMENCLATURE, SHRT_NM_2301_ECCMA: @sourcedatum.SHRT_NM_2301_ECCMA, SOS: @sourcedatum.SOS, STOCK_NUMBER: @sourcedatum.STOCK_NUMBER, UI: @sourcedatum.UI }
    assert_redirected_to sourcedatum_path(assigns(:sourcedatum))
  end

  test "should destroy sourcedatum" do
    assert_difference('Sourcedatum.count', -1) do
      delete :destroy, id: @sourcedatum
    end

    assert_redirected_to sourcedata_path
  end
end
