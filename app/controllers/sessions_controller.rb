class SessionsController < ApplicationController

  def new
    if account_signed_in?
      redirect_to dashboard_url
    end
  end

  def create
    @account = Account.find_by("LOWER(email) = ?", account_params[:email].downcase)

    if @account.present? && @account.authenticate(account_params[:password])
      cookies.permanent.signed[:account_id] = @account.id
      redirect_to root_url, notice: "Logado com sucesso"
    else
      flash[:error] = "Erro ao logar. Verifique seus dados"
      render :new
    end
  end

  def destroy
    cookies.delete(:account_id)
    redirect_to root_url
  end

  private

  def account_params
    params.require(:account).permit(:email, :password)
  end
end
