# typed: true

require 'rails_helper'

RSpec.describe Address, type: :model do
  describe '#geocode' do
    context 'when an address is created with either no latitude, no longitude or neither' do
      it 'sets the latitude and longitude of the address' do
        address = Address.new(
          street: Faker::Address.street_address(include_secondary: false),
          city: Faker::Address.city,
          state_province_code: Faker::Address.state_abbr,
          postal_code: Faker::Address.postcode
        )

        assert address.latitude.nil?
        assert address.longitude.nil?

        address.validate!

        assert address.latitude.present?
        assert address.longitude.present?
      end
    end
  end
end
