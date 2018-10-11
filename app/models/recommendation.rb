class Recommendation < ApplicationRecord
  belongs_to :artist
  belongs_to :recommended_artist
end
