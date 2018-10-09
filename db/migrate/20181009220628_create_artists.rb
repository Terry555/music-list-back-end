class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :similar_artists
      t.string :image
      t.string :tag
      t.string :bio

      t.timestamps
    end
  end
end
