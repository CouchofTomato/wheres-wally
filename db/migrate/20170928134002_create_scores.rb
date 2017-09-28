class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.belongs_to :photo, foreign_key: true
      t.string :name
      t.integer :time

      t.timestamps
    end
  end
end
