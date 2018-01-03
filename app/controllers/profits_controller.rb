class ProfitsController < ApplicationController

  def new
    @profit = Profit.new
  end

  def create

    @profit = Profit.new(profit_params)

    if @profit.valid?
      @profit_loss = @profit.calculate_profit
    else
      render :new
    end

  end

  private

  def profit_params
    params.require(:profit).permit(:average_long_term_rent, :address, :airbnb_income)
  end

end
