require 'test_helper'

class StarshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get starships_index_url
    assert_response :success
  end

  test "should get show" do
    get starships_show_url
    assert_response :success
  end

  test "should get starship_category" do
    get starships_starship_category_url
    assert_response :success
  end

  test "should get starship_new" do
    get starships_starship_new_url
    assert_response :success
  end

  test "should get starship_refurbished" do
    get starships_starship_refurbished_url
    assert_response :success
  end

end
