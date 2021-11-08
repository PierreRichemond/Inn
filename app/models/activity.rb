class Activity < ApplicationRecord
  has_one_attached :image
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_taggable_on :tags

  TAGS = ["Culture", "Restauration", "Commerce", "Loisir", "Vignobles", "Traiteur", "Station service"]
end



# create_table "activities" do
#     t.string image
#     t.integer price
#     t.integer location
#   end

#   create_table "activities_translations" do
#     t.string "locale"
#     t.string "text"
#     t.string "field_name"
#     t.integer "activity_id"
#   end

#   "fr-Fr" "Mon Titre" "title" 1
#   "fr-Fr" "Ma description" "description" 1
#   "fr-Fr" "Mes Exemples" "examples" 1

  # class Activity < Model
  #   has_many :activities_translations

  #   def title(locale)
  #     activities_translations.find_by(locale: locale, field_name: 'title').text
  #   end

  #   def set_title(locale, title)
  #     title_translation = activities_translations.find_or_initialize_by(locale: locale, field_name: 'title')
  #     title_translation.update(text: title)
  #   end

  #   def description(locale)
  #     activities_translations.find_by(locale: locale, field_name: 'description').text
  #   end

  #   def set_description(locale, title)
  #     title_translation = activities_translations.find_or_initialize_by(locale: locale, field_name: 'description')
  #     title_translation.update(text: title)
  #   end
  # end


  # activity = Activity.create(
  #   image: image,
  #   price: price,
  #   location: location
  # )
  # activity.set_title('fr-FR', "Mon titre")
  # activity.set_title('en-GB', "My title")
  # activity.set_description('fr-FR', "Ma description")
  # activity.set_description('en-GB', "My description")
