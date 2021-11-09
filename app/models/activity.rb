class Activity < ApplicationRecord
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_taggable_on :tags
  has_many :activities_translations

    def name(locale)
      activities_translations.find_by(locale: locale, field_name: 'name').text
    end

    def set_name(locale, name)
      name_translation = activities_translations.find_or_initialize_by(locale: locale, field_name: 'name')
      name_translation.update(text: name)
    end

    def description(locale)
      activities_translations.find_by(locale: locale, field_name: 'description').text
    end

    def set_description(locale, title)
      title_translation = activities_translations.find_or_initialize_by(locale: locale, field_name: 'description')
      title_translation.update(text: title)
    end

     TAGS = ["Culture", "Culture", "Restauration", "Catering", "Commerce", "Business", "Loisir", "Leasure", "Vignobles", "Vineyards", "Traiteur", "Caterer", "Station service", "Gaz station"]
end
