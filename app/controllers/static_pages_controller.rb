class StaticPagesController < ApplicationController
  def home
  end

  def show_trades
    @bps = current_user.bull_put_spreads.all 
  end
end
