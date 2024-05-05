# typed: true

# frozen_string_literal: true

# Creates a Bill in Sway if it does not exist
class SeedBill
  extend T::Sig

  sig { params(sway_locales: T::Array[SwayLocale]).void }
  def self.run(sway_locales)
    sway_locales.each do |sway_locale|
      T.let(read_bills(sway_locale), T::Array[T::Hash[String, String]]).each do |json|
        SeedBill.new.seed(T.let(json, T::Hash[String, String]), sway_locale)
      end
    end
  end

  sig { params(sway_locale: SwayLocale).returns(T::Array[T::Hash[String, String]]) }
  def self.read_bills(sway_locale)
    T.let(JSON.parse(File.read("db/seeds/data/#{sway_locale.reversed_name.gsub('-', '/')}/bills.json")),
          T::Array[T::Hash[String, String]])
  end

  sig { params(time_string: T.nilable(String)).returns(T.nilable(Time)) }
  def self.time(time_string)
    Time.parse(time_string) if time_string
  end

  def initialize; end

  sig { params(json: T::Hash[String, T.any(String, T::Hash[String, String])], sway_locale: SwayLocale).returns(Bill) }
  def seed(json, sway_locale)
    Bill.find_or_create_by!(
      external_id: json.fetch('external_id', nil),
      external_version: json.fetch('external_version', nil),
      title: json.fetch('title', nil),
      link: json.fetch('link', nil),
      chamber: json.fetch('chamber', nil),
      introduced_date_time_utc: json.fetch('introduced_date_time_utc', nil),
      house_vote_date_time_utc: json.fetch('house_vote_date_time_utc', nil),
      senate_vote_date_time_utc: json.fetch('senate_vote_date_time_utc', nil),
      level: json.fetch('level', nil),
      category: json.fetch('category', nil),
      legislator: Legislator.where(
        first_name: T.cast(json, T::Hash[String, T::Hash[String, String]]).dig('legislator', 'first_name'),
        last_name: T.cast(json, T::Hash[String, T::Hash[String, String]]).dig('legislator', 'last_name')
      ).find { |l| l.sway_locale.eql?(sway_locale) },
      sway_locale:
    )
  end
end
