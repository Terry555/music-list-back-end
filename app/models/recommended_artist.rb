class RecommendedArtist < ApplicationRecord
  # when i create a new artist, we need to find or create the recommended_artist
  has_many :recommendations
  has_many :artists, :through => :recommendations #, dependent: :destroy
  #validate unique names
end
