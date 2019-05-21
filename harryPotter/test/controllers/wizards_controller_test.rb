require 'test_helper'

class WizardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wizard = wizards(:one)
  end

  test "should get index" do
    get wizards_url
    assert_response :success
  end

  test "should get new" do
    get new_wizard_url
    assert_response :success
  end

  test "should create wizard" do
    assert_difference('Wizard.count') do
      post wizards_url, params: { wizard: { fisrt_name: @wizard.fisrt_name, last_name: @wizard.last_name } }
    end

    assert_redirected_to wizard_url(Wizard.last)
  end

  test "should show wizard" do
    get wizard_url(@wizard)
    assert_response :success
  end

  test "should get edit" do
    get edit_wizard_url(@wizard)
    assert_response :success
  end

  test "should update wizard" do
    patch wizard_url(@wizard), params: { wizard: { fisrt_name: @wizard.fisrt_name, last_name: @wizard.last_name } }
    assert_redirected_to wizard_url(@wizard)
  end

  test "should destroy wizard" do
    assert_difference('Wizard.count', -1) do
      delete wizard_url(@wizard)
    end

    assert_redirected_to wizards_url
  end
end
