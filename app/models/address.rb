# == Schema Information
#
# Table name: addresses
#
#  id                  :bigint           not null, primary key
#  street              :string           not null
#  street_2            :string
#  street_3            :string
#  city                :string           not null
#  state_province_code :string           not null
#  postal_code         :string           not null
#  country             :string           default("US"), not null
#  latitude            :float
#  longitude           :float
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Address < ApplicationRecord
end
