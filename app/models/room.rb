class Room < ApplicationRecord
  has_many_attached :images
  has_many :rooms_translations
end
