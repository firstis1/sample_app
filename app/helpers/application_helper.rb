module ApplicationHelper
  def full_title page_title = ""
    if page_title.blank?
      I18n.t("base_title")
    else
      page_title + " | " + I18n.t("base_title")
    end
  end
end
