class Activity < ApplicationRecord
  has_one_attached :image
  validates :name, :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_taggable_on :tags
  has_many :activities_translations
  TAGS = ["Culture", "Culture", "Restauration", "Catering", "Commerce", "Business", "Loisir", "Leisure", "Vignobles", "Vineyards", "Traiteur", "Caterer", "Station service", "Gaz station"]

  accepts_nested_attributes_for :activities_translations

  def description(locale)
    activities_translations.find_by(locale: locale, field_name: 'description').text
  end

  def set_description(locale, description)
    description_translation = activities_translations.find_or_initialize_by(locale: locale, field_name: 'description')
    description_translation.update!(text: description)
  end
end
