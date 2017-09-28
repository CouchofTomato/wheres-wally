class CreatePhotosCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :photos_characters do |t|
      t.belongs_to :photo, foreign_key: true
      t.belongs_to :character, foreign_key: true
      t.integer :top_x
      t.integer :top_y
      t.integer :bottom_x
      t.integer :bottom_y

      t.timestamps
    end
  end
end
