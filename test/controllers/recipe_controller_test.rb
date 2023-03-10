require 'test_helper'

class RecipeControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get recipe_show_url
    assert_response :success
  end

  test 'should get create' do
    get recipe_create_url
    assert_response :success
  end

  test 'should get update' do
    get recipe_update_url
    assert_response :success
  end

  test 'should get destroy' do
    get recipe_destroy_url
    assert_response :success
  end
end
