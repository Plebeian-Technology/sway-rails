# typed: strict
# == Schema Information
#
# Table name: user_votes
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  bill_id    :integer          not null
#  support    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserVote < ApplicationRecord
  belongs_to :user
  belongs_to :bill
end
