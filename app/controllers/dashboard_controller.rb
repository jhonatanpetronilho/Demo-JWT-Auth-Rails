class DashboardController < ApplicationController

  before_action :authenticate_account
  before_action :verify_admin, only: [:show]

  def index
  end

  def show
    render plain: "Uau! You access an secret page! :O"
  end
end
