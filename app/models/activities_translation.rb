class ActivitiesTranslation < ApplicationRecord
  belongs_to :activities
  validates :locale, presence: true
  validates :field_name, presence: true
end
