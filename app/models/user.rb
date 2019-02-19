class User < ApplicationRecord
  has_many :user_artists, dependent: :destroy
  has_many :artists, :through => :user_artists
  validates :name, uniqueness: { case_sensitive: false }
end
