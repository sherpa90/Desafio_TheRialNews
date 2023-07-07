require "test_helper"

class CommentAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_app = comment_apps(:one)
  end

  test "should get index" do
    get comment_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_app_url
    assert_response :success
  end

  test "should create comment_app" do
    assert_difference("CommentApp.count") do
      post comment_apps_url, params: { comment_app: { NewApp_id: @comment_app.NewApp_id, content: @comment_app.content, user_id: @comment_app.user_id } }
    end

    assert_redirected_to comment_app_url(CommentApp.last)
  end

  test "should show comment_app" do
    get comment_app_url(@comment_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_app_url(@comment_app)
    assert_response :success
  end

  test "should update comment_app" do
    patch comment_app_url(@comment_app), params: { comment_app: { NewApp_id: @comment_app.NewApp_id, content: @comment_app.content, user_id: @comment_app.user_id } }
    assert_redirected_to comment_app_url(@comment_app)
  end

  test "should destroy comment_app" do
    assert_difference("CommentApp.count", -1) do
      delete comment_app_url(@comment_app)
    end

    assert_redirected_to comment_apps_url
  end
end
