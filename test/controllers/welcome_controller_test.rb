require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test 'renders the home page on the upgraded runtime' do
    get root_url
    assert_response :success
  end
end
