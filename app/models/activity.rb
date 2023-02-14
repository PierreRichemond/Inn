class Activity < ApplicationRecord
  has_one_attached :image
  validates :name, presence: true
  geocoded_by :address, latitude: :lat, longitude: :lng
  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode
  acts_as_taggable_on :tags
  has_many :activities_translations

  after_update :set_distance
  #   after_commit :set_lonlat

  accepts_nested_attributes_for :activities_translations

    TAGS = ["Culture", "Culture", "Restauration", "Catering", "Commerce", "Business", "Loisir", "Leisure", "Vignobles", "Vineyards", "Traiteur", "Caterer", "Station service", "Gaz station"]

  def description(locale)
    activities_translations.find_by(locale: locale, field_name: 'description')&.text
  end

  def set_description(locale, description)
    description_translation = activities_translations.find_or_initialize_by(locale: locale, field_name: 'description')
    description_translation.update!(text: description)
  end

  def set_distance
    return if self.lng.nil? || self.lat.nil?

    self.distance = distance_to([47.5227350000, 0.8190269000]).round(2).to_s
    return if previous_changes.empty?

    self.save
  end
end
