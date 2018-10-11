class Artist < ApplicationRecord
  has_many :user_artists
  has_many :users, :through => :user_artists
  has_many :recommendations
  has_many :recommended_artists, :through => :recommendations
end
