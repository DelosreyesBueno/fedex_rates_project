class RatesService
  def self.get_rates(quote_params)
    FedexRatesGem::Rates.get(credentials, JSON.parse(quote_params.to_json))
  end

  private
  def self.credentials
    {
      key: Rails.application.credentials['fedex']['key'],
      password: Rails.application.credentials['fedex']['password'],
      account_number: Rails.application.credentials['fedex']['account_number'],
      meter_number: Rails.application.credentials['fedex']['meter_number']
    }
  end
end