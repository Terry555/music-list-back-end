class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.integer :artist_id
      t.integer :recommended_artist_id

      t.timestamps
    end
  end
end
