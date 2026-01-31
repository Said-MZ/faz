class DashboardController < ApplicationController
  def index
    render Views::Dashboard::Index.new("Sai'd")
  end
end
