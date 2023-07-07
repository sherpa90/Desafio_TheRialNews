require "test_helper"

class NewAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_app = new_apps(:one)
  end

  test "should get index" do
    get new_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_new_app_url
    assert_response :success
  end

  test "should create new_app" do
    assert_difference("NewApp.count") do
      post new_apps_url, params: { new_app: { content: @new_app.content, published_at: @new_app.published_at, title: @new_app.title } }
    end

    assert_redirected_to new_app_url(NewApp.last)
  end

  test "should show new_app" do
    get new_app_url(@new_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_app_url(@new_app)
    assert_response :success
  end

  test "should update new_app" do
    patch new_app_url(@new_app), params: { new_app: { content: @new_app.content, published_at: @new_app.published_at, title: @new_app.title } }
    assert_redirected_to new_app_url(@new_app)
  end

  test "should destroy new_app" do
    assert_difference("NewApp.count", -1) do
      delete new_app_url(@new_app)
    end

    assert_redirected_to new_apps_url
  end
end
