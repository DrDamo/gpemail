require 'test_helper'

class DoctorsControllerTest < ActionController::TestCase
  setup do
    @doctor = doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctor" do
    assert_difference('Doctor.count') do
      post :create, doctor: { active: @doctor.active, email: @doctor.email, firstname: @doctor.firstname, gmcno: @doctor.gmcno, mobile: @doctor.mobile, notes: @doctor.notes, notifymethod: @doctor.notifymethod, outoffice: @doctor.outoffice, quals: @doctor.quals, signature: @doctor.signature, surname: @doctor.surname, title: @doctor.title }
    end

    assert_redirected_to doctor_path(assigns(:doctor))
  end

  test "should show doctor" do
    get :show, id: @doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctor
    assert_response :success
  end

  test "should update doctor" do
    put :update, id: @doctor, doctor: { active: @doctor.active, email: @doctor.email, firstname: @doctor.firstname, gmcno: @doctor.gmcno, mobile: @doctor.mobile, notes: @doctor.notes, notifymethod: @doctor.notifymethod, outoffice: @doctor.outoffice, quals: @doctor.quals, signature: @doctor.signature, surname: @doctor.surname, title: @doctor.title }
    assert_redirected_to doctor_path(assigns(:doctor))
  end

  test "should destroy doctor" do
    assert_difference('Doctor.count', -1) do
      delete :destroy, id: @doctor
    end

    assert_redirected_to doctors_path
  end
end
