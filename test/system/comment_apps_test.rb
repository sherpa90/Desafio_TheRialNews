require "application_system_test_case"

class CommentAppsTest < ApplicationSystemTestCase
  setup do
    @comment_app = comment_apps(:one)
  end

  test "visiting the index" do
    visit comment_apps_url
    assert_selector "h1", text: "Comment apps"
  end

  test "should create comment app" do
    visit comment_apps_url
    click_on "New comment app"

    fill_in "Newapp", with: @comment_app.NewApp_id
    fill_in "Content", with: @comment_app.content
    fill_in "User", with: @comment_app.user_id
    click_on "Create Comment app"

    assert_text "Comment app was successfully created"
    click_on "Back"
  end

  test "should update Comment app" do
    visit comment_app_url(@comment_app)
    click_on "Edit this comment app", match: :first

    fill_in "Newapp", with: @comment_app.NewApp_id
    fill_in "Content", with: @comment_app.content
    fill_in "User", with: @comment_app.user_id
    click_on "Update Comment app"

    assert_text "Comment app was successfully updated"
    click_on "Back"
  end

  test "should destroy Comment app" do
    visit comment_app_url(@comment_app)
    click_on "Destroy this comment app", match: :first

    assert_text "Comment app was successfully destroyed"
  end
end
