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

  accepts_nested_attributes_for :activities_translations, :allow_destroy => true

  TAGS = ["Culture", "Culture", "Restauration", "Catering", "Commerce", "Business", "Loisir", "Leisure", "Vignobles", "Vineyards", "Traiteur", "Caterer", "Station service", "Gaz station"]

  scope :culture, -> { Activity.tagged_with("Culture") }
  scope :catering, -> { Activity.tagged_with("Restauration") }
  scope :business, -> { Activity.tagged_with("Commerce") }
  scope :leisure, -> { Activity.tagged_with("Loisir") }
  scope :vineyards, -> { Activity.tagged_with("Vignobles") }
  scope :caterer, -> { Activity.tagged_with("Traiteur") }
  scope :gaz_station, -> { Activity.tagged_with("Station service") }

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

  def set_tag(tag_ids)
    self.tag_list = []
    tag_ids.each do |tag_id|
      next if tag_id == ''
      tag = ActsAsTaggableOn::Tag.find(tag_id).name
      if tag == "Culture"
        self.tag_list += "Culture"
      elsif tag == "Catering" || tag == "Restauration"
        self.tag_list += "Catering, Restauration"
      elsif tag == "Commerce" || tag == "Business"
        self.tag_list += "Commerce, Business"
      elsif tag == "Loisir" || tag == "Leisure"
        self.tag_list += "Loisir, Leisure"
      elsif tag == "Vignobles" || tag == "Vineyards"
        self.tag_list += "Vignobles, Vineyards"
      elsif tag == "Station service" || tag == "Gaz station"
        self.tag_list += "Station service, Gaz station"
      end
      self.save
    end
  end
end
