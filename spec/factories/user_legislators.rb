# == Schema Information
#
# Table name: user_legislators
#
#  id            :integer          not null, primary key
#  legislator_id :integer          not null
#  user_id       :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
FactoryBot.define do
  factory :user_legislator do
    user
    legislator

    initialize_with { new({ user:, legislator: }) }
  end
end
