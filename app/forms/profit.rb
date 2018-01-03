class Profit
  include ActiveModel::Model

  attr_accessor :average_long_term_rent, :address, :airbnb_income

  validates_presence_of :average_long_term_rent, :address, :airbnb_income
  validates_numericality_of :average_long_term_rent, :airbnb_income

  def calculate_profit
    if valid?
      return self.airbnb_income.to_f - self.average_long_term_rent.to_f
    else
      return nil
    end
  end

end