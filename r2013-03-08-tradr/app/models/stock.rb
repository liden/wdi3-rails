# == Schema Information
#
# Table name: stocks
#
#  id             :integer          not null, primary key
#  symbol         :string(255)
#  shares         :integer
#  purchase_price :decimal(, )
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Stock < ActiveRecord::Base
  attr_accessible :symbol, :shares, :purchase_price, :user_id
  belongs_to :user, :inverse_of => :stocks

  def Stock.quote(symbol)
    symbol = symbol.upcase
    YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
  end

  before_save :set_purchase_price, :set_symbol_upcase
  private
  def set_purchase_price
    self.purchase_price = Stock.quote(self.symbol)
  end
  def set_symbol_upcase
    self.symbol = self.symbol.upcase
  end
end
