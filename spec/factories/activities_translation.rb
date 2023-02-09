# spec/factories/activity.rb

FactoryBot.define do
  factory :activities_translation do
    activity { Activity.first || create(:activity) }
    locale { "fr" }
    field_name { "name" }
    text { "Château d'Amboise" }
  end
end
