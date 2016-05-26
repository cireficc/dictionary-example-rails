require 'test_helper'

class ExampleTranslationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @example_translation = example_translations(:one)
  end

  test "should get index" do
    get example_translations_url
    assert_response :success
  end

  test "should get new" do
    get new_example_translation_url
    assert_response :success
  end

  test "should create example_translation" do
    assert_difference('ExampleTranslation.count') do
      post example_translations_url, params: { example_translation: {  } }
    end

    assert_redirected_to example_translation_path(ExampleTranslation.last)
  end

  test "should show example_translation" do
    get example_translation_url(@example_translation)
    assert_response :success
  end

  test "should get edit" do
    get edit_example_translation_url(@example_translation)
    assert_response :success
  end

  test "should update example_translation" do
    patch example_translation_url(@example_translation), params: { example_translation: {  } }
    assert_redirected_to example_translation_path(@example_translation)
  end

  test "should destroy example_translation" do
    assert_difference('ExampleTranslation.count', -1) do
      delete example_translation_url(@example_translation)
    end

    assert_redirected_to example_translations_path
  end
end
