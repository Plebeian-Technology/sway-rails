# typed: true

class BillOfTheWeekController < ApplicationController


  def index
    b = T.cast(Bill.where(sway_locale: current_sway_locale).of_the_week, T.nilable(T.any(Bill, T::Array[Bill])))
    b = b.first if b.is_a?(Array)

    if b.present?

      T.unsafe(self).render_bill_of_the_week(lambda do
        {
          bill: b.to_builder.attributes!,
          positions: b.organization_bill_positions.map{ |obp| obp.to_builder.attributes! },
          legislatorVotes: b.legislator_votes.map{ |lv| lv.to_builder.attributes! },
          userVote: UserVote.find_by(
            user: current_user,
            bill: b
          )&.attributes
        }
      end)
    else



      redirect_to bills_path
    end
  end
end
