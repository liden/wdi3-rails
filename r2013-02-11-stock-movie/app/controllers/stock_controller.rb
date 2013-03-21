class StockController < ApplicationController
  def stock
  end

  def show_stock
  end

  def get_stock
    if params[:symbol].present?
      @symbol = params[:symbol].upcase
      @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
    end
    render 'show_stock'
  end
end