class CardsController < ApplicationController
  def initialize
  end

  def index
    render Views::Dashboard::Index.new(cards)
  end

  def front
    card.front
  end

  def back
    @card = Card.find(params[:id])
  end

  private

  def cards
    Card.all
  end
end
