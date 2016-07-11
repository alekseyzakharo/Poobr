require 'test_helper'

class PostingsControllerTest < ActionController::TestCase
  setup do
    @posting = postings(:one)
  end

  test "get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postings)
  end

  test "get new" do
    get :new
    assert_response :success
  end

  test "create posting" do
    assert_difference('Posting.count') do
      post :create, posting: { address: @posting.address, description: @posting.description, handicap: @posting.handicap, infant: @posting.infant, latitude: @posting.latitude, longitude: @posting.longitude, shower: @posting.shower, title: @posting.title }
    end

    assert_redirected_to posting_path(assigns(:posting))
  end

  test "show posting" do
    get :show, id: @posting
    assert_response :success
  end

  test "get edit" do
    get :edit, id: @posting
    assert_response :success
  end

  test "update posting" do
    patch :update, id: @posting, posting: { address: @posting.address, description: @posting.description, handicap: @posting.handicap, infant: @posting.infant, latitude: @posting.latitude, longitude: @posting.longitude, shower: @posting.shower, title: @posting.title }
    assert_redirected_to posting_path(assigns(:posting))
  end

  test "destroy posting" do
    assert_difference('Posting.count', -1) do
      delete :destroy, id: @posting
    end
    assert_redirected_to postings_path
  end




end
