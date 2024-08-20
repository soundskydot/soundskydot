class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.references :band, null: false, foreign_key: true
      t.string :name
      t.integer :position
      t.float :royalty
      t.string :wallet

      t.timestamps
    end
  end
end
