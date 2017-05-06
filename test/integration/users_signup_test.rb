require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "signup invalid informations" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: {
                                  user: { name: "",
                                          email: "user@invalid",
                                          password: "foo",
                                          password_confirmation: "foo"
                                        }}
    end
    assert_template 'users/new'
  end
end
