require 'test_helper'

class SharedStoriesControllerTest < ActionController::TestCase
  setup do
    @shared_story = shared_stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shared_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shared_story" do
    assert_difference('SharedStory.count') do
      post :create, shared_story: { story_id: @shared_story.story_id, user_id: @shared_story.user_id }
    end

    assert_redirected_to shared_story_path(assigns(:shared_story))
  end

  test "should show shared_story" do
    get :show, id: @shared_story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shared_story
    assert_response :success
  end

  test "should update shared_story" do
    put :update, id: @shared_story, shared_story: { story_id: @shared_story.story_id, user_id: @shared_story.user_id }
    assert_redirected_to shared_story_path(assigns(:shared_story))
  end

  test "should destroy shared_story" do
    assert_difference('SharedStory.count', -1) do
      delete :destroy, id: @shared_story
    end

    assert_redirected_to shared_stories_path
  end
end
