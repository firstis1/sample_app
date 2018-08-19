require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, I18n.t("base_title")
    assert_equal full_title("Help"), "Help | " + I18n.t("base_title")
  end
end
