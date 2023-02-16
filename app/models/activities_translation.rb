class ActivitiesTranslation < ApplicationRecord
  belongs_to :activity
  validates :locale, presence: true
  validates :field_name, presence: true

  before_validation :one_field_for_specific_locale

  LOCALES = ["fr", "en"]
  FIELDS = ['Description']

  def one_field_for_specific_locale
    return true if double_local_for_one_field

    errors.add(:locale, "set of locale and field_name already set, update the one already created")
  end

  def double_local_for_one_field
    if id
      return ActivitiesTranslation.where("activity_id = ?", activity.id)
                                          .where("id != ?", id)
                                          .where("locale = ? AND field_name = ?", locale, field_name).empty?
    end

    ActivitiesTranslation.where("activity_id = ?", activity.id)
                         .where("locale = ? AND field_name = ?", locale, field_name).empty?
  end
end
