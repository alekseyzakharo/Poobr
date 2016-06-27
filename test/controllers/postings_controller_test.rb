require 'test_helper'

class PostingsControllerTest < ActionController::TestCase
  setup do
    @posting = postings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create posting" do
    assert_difference('Posting.count') do
      post :create, posting: { address: @posting.address, description: @posting.description, handicap: @posting.handicap, infant: @posting.infant, latitude: @posting.latitude, longitude: @posting.longitude, shower: @posting.shower, title: @posting.title }
    end

    assert_redirected_to posting_path(assigns(:posting))
  end

  test "should show posting" do
    get :show, id: @posting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @posting
    assert_response :success
  end

  test "should update posting" do
    patch :update, id: @posting, posting: { address: @posting.address, description: @posting.description, handicap: @posting.handicap, infant: @posting.infant, latitude: @posting.latitude, longitude: @posting.longitude, shower: @posting.shower, title: @posting.title }
    assert_redirected_to posting_path(assigns(:posting))
  end

  test "should destroy posting" do
    assert_difference('Posting.count', -1) do
      delete :destroy, id: @posting
    end

    assert_redirected_to postings_path
  end
end
