class Room < ApplicationRecord
  has_many_attached :images
  has_many :rooms_translations, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :booking_previews, dependent: :destroy
  monetize :price_cents

  def ppl(arg)
    rooms_translations.find_by(locale: arg.to_s, field_name: 'ppl').text
  end

  def set_ppl(locale, ppl)
    ppl_translation = rooms_translations.find_or_initialize_by(locale: locale, field_name: 'ppl')
    ppl_translation.update(text: ppl)
  end

  def description(locale)
    rooms_translations.find_by(locale: locale, field_name: 'description').text
  end

  def set_description(locale, description)
    description_translation = rooms_translations.find_or_initialize_by(locale: locale, field_name: 'description')
    description_translation.update(text: description)
  end

  def details(locale)
    rooms_translations.find_by(locale: locale, field_name: 'details').text
  end

  def set_details(locale, details)
    details_translation = rooms_translations.find_or_initialize_by(locale: locale, field_name: 'details')
    details_translation.update(text: details)
  end

  def detailz(locale)
    rooms_translations.find_by(locale: locale, field_name: 'detailz').text
  end

  def set_detailz(locale, detailz)
    detailz_translation = rooms_translations.find_or_initialize_by(locale: locale, field_name: 'detailz')
    detailz_translation.update(text: detailz)
  end
end
