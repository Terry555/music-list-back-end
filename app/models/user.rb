class User < ApplicationRecord
  has_many :user_artists
  has_many :artists, :through => :user_artists
  validates :name, uniqueness: true { case_sensitive: false }
end
