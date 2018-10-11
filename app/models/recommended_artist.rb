class RecommendedArtist < ApplicationRecord
  has_many :recommendations
  has_many :artists, :through => :recommendations
end
