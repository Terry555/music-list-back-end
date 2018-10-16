class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :tag, :bio, :recommended_artists
  has_many :recommendations
  has_many :recommended_artists, through: :recommendations
end
