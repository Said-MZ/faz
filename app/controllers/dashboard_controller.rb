class DashboardController < ApplicationController
  def index
    render Views::Dashboard::Index.new(cards)
  end

  private

  def cards
    Card.all
  end
end
