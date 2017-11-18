require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should create user" do
  assert_difference('User.count') do
    post :create, user: { name: 'sam', password: 'secret',
      password_confirmation: 'secret' }
  end
  assert_redirected_to users_path
  end
  test "should update user" do
  assert_difference('User.count') do
    post :update, user: { name: 'sam', password: 'secret',
      password_confirmation: 'secret' }
  end
    assert_redirected_to users_path
  end
end
