class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :user_artists
  has_many :artists, through: :user_artists

end
