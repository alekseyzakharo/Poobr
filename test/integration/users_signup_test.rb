#tests were implemented with help from tutorial found in iteration1 writeup

require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest


 #   Cannot test this due to addition of email verification.
 #   ********************************************************
 #
 #  test "valid signup information" do
 #   get signup_path
 #   assert_difference 'User.count', 1 do
 #     post_via_redirect users_path, user: { name:  "Example User",
 #                                           email: "user@example.com",
 #                                           password:              "password",
 #                                           password_confirmation: "password" }
 #   end
 #   assert_template 'users/show'
 #   assert is_logged_in?
 # end
end
