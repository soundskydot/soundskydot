class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.references :band, null: false, foreign_key: true
      t.float :price
      t.integer :year
      t.string :title
      t.string :album
      t.timestamps
    end
  end
end
