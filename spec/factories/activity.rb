# spec/factories/activity.rb

FactoryBot.define do
  factory :activity do
    address { "Mnt de l'Emir Abd el Kader, 37400 Amboise, France" }
    longitude { 0.8 }
    latitude { 47.5 }
    price { '13.5' }
    url { "https://www.chateau-amboise.com" }
    phone { '06 06 06 06 06' }
  end
end
