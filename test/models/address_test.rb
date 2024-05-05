# typed: strict

# == Schema Information
#
# Table name: addresses
#
#  id          :integer          not null, primary key
#  street      :string           not null
#  street2     :string
#  street3     :string
#  city        :string           not null
#  region_code :string           not null
#  postal_code :string           not null
#  country     :string           default("US"), not null
#  latitude    :float
#  longitude   :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
