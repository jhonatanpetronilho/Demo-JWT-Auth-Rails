class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :account_signed_in?, :current_account, :account_admin?

  protected

  def authenticate_account
    if current_account.blank?
      cookies.delete(:account_id)
      redirect_to(root_url)
    end
  end

  def current_account
    @current_account ||= Account.find_by(id: cookies.signed[:account_id])
  end

  def account_signed_in?
    current_account.present?
  end

  def account_admin?
    current_account.admin?
  end

  def verify_admin
    unless account_admin?
      redirect_to root_url
    end
  end

end
