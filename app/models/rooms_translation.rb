class RoomsTranslation < ApplicationRecord
  belongs_to :room
  validates :locale, presence: true
  validates :field_name, presence: true

  validate :one_field_for_specific_locale

  LOCALES = ["fr", "en"]
  FIELDS = ['ppl, description, details, detailz']

  def one_field_for_specific_locale
    return true if double_local_for_one_field

    errors.add(:locale, "set of locale and field_name already set, update the one already created")
  end

  def double_local_for_one_field
    if id
      return true if RoomsTranslation.where("room_id = ?", room.id)
                                          .where("id != ?", id)
                                          .where("locale = ? AND field_name = ?", locale, field_name).empty?
    end

    RoomsTranslation.where("room_id = ?", room.id)
                    .where("locale = ? AND field_name = ?", locale, field_name).empty?
  end
end
