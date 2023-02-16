class ActivitiesTranslation < ApplicationRecord
  belongs_to :activity
  validates :locale, presence: true
  validates :field_name, presence: true

  # validate :one_field_for_specific_locale

  LOCALES = ["fr", "en"]
  FIELDS = ['Description']

  # def one_field_for_specific_locale
  #   return true if double_local_for_one_field

  #   errors.add(:locale, "set of locale and field_name already set, update the one already created")
  # end

  # def double_local_for_one_field
  #   return false if ActivitiesTranslation.where("activity_id = #{activity.id}")
  #                        .where("locale = #{locale} AND field_name = #{field_name}").empty?
  # end
end
