class CreatePlayings < ActiveRecord::Migration[7.1]
  def change
    create_table :playings do |t|
      t.references :song, null: false, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
