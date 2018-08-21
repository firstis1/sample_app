class UserMailer < ApplicationMailer
  def account_activation user
    @user = user
    mail to: user.email, subject: "#{t('account')} #{t('activate')}"
  end

  def password_reset user
    @user = user
    mail to: user.email, subject: t("reset_pass")
  end
end
