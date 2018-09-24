require 'test_helper'

class Conversations::MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conversations_messages_index_url
    assert_response :success
  end

end
