require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
    @posting = postings(:post_one)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, comment: { body: @comment.body, commenter: @comment.commenter }, posting_id: @posting.id
    end
    assert_redirected_to posting_path(assigns(:posting))
  end
end
