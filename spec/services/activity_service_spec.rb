# require 'rails_helper'

# RSpec.describe ActivityService, type: :model do
#   describe '#self.tags_per_language(locale)' do
#     it "fetch tags for specific language" do
#       result = ActivityService.tags_per_language("en")
#       expect ( result).to contain_exactly("Culture", "Catering", "Business", "Leisure", "Vineyards", "Caterer", "Gaz station")
#       result = ActivityService.tags_per_language("fr")
#       expect ( result).to eq(
#         ["Culture", "Restauration", "Commerce", "Loisir", "Vignobles", "Traiteur", "Station service"]
#       )
#     end
#   end

#   describe '#self.activities_with_tag(locale)' do
#     let!(:activity_1) { create(:activity, address: "Activity_1", tag_list: ["Culture", "Catering", "Restauration"]) }
#     let!(:activity_2) { create(:activity, address: "Activity_2", tag_list: ["Vineyards"]) }
#     let!(:activity_3) { create(:activity, address: "Activity_3", tag_list: ["Leisure"]) }
#     it "create an instance of BookingAttempt" do
#       expect ( ActivityService.activities_with_tag("Culture")).to eq(activity_1)
#       expect ( ActivityService.activities_with_tag("Catering")).to eq(activity_1)
#       expect ( ActivityService.activities_with_tag("Restauration")).to eq(activity_1)
#       expect ( ActivityService.activities_with_tag("Vineyards")).to eq(activity_2)
#       expect ( ActivityService.activities_with_tag("Leisure")).to eq(activity_2)
#     end
#   end
# end
