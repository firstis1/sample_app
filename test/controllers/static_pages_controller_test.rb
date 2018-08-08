require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", I18n.t("base_title").to_s
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "#{I18n.t('help')} | #{I18n.t('base_title')}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "#{I18n.t('about')} | #{I18n.t('base_title')}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "#{I18n.t('contact')} | #{I18n.t('base_title')}"
  end
end
