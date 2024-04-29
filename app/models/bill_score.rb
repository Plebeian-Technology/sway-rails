# typed: strict
# == Schema Information
#
# Table name: bill_scores
#
#  id         :integer          not null, primary key
#  bill_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BillScore < ApplicationRecord
  belongs_to :bill
end
