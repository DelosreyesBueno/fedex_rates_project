class HomeController < ApplicationController
  def index
    rates = RatesService.get_rates(quote_params)
    render json: rates
  end

  private
  def quote_params
    params.require(:rateRequest)
  end
end