class CreateRecommendedArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :recommended_artists do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
