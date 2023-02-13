class RoomsTranslation < ApplicationRecord
  belongs_to :room
  validates :locale, presence: true
  validates :field_name, presence: true

  LOCALES = ["fr", "en"]
end
