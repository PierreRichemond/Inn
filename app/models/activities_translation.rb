class ActivitiesTranslation < ApplicationRecord
  belongs_to :activity
  validates :locale, presence: true
  validates :field_name, presence: true

  LOCALES = ["fr", "en"]
end
