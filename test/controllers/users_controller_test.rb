require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do
    @user1 = users(:one)
    @user2 = users(:two)
  end


  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

#  test "should get transaction" do
#    get :transaction
#    assert_response :success
#  end


end
