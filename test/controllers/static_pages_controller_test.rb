require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup # 各テストが行われる前に実行されるメソッド
    @base_title = 'Ruby on Rails Tutorial Sample App' # オブジェクトの中の変数には＠をつける
  end

  test 'should get home' do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test 'should get help' do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test 'should get about' do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
end