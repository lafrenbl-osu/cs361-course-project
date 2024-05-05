class CreateArtPieces < ActiveRecord::Migration[7.1]
  def change
    create_table :art_pieces do |t|
      t.string :title
      t.references :artist, null: false, foreign_key: true
      t.date :release_date

      t.timestamps
    end
  end
end
