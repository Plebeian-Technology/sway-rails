# typed: strict
# == Schema Information
#
# Table name: user_invites
#
#  id                     :integer          not null, primary key
#  user_id                :integer          not null
#  invitee_email          :string
#  invite_expires_on_utc  :datetime
#  invite_accepted_on_utc :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class UserInvite < ApplicationRecord
  belongs_to :user
end