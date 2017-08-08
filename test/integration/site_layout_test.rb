require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test 'layout links' do
    get root_path
    assert_template 'static_pages/home'
    assert_select 'a[href=?]', root_path, count: 2    # リンクが2つある場合、count:2をつける
    assert_select 'a[href=?]', help_path    # ?マークをhelp_pathに置き換え
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', contact_path
    assert_select 'a[href=?]', signup_path
    get contact_path
    assert_select "title", full_title("Contact")
  end
end