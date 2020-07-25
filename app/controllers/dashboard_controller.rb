class DashboardController < ApplicationController
  before_action :authenticate_administrador!
  def index
  end
end
