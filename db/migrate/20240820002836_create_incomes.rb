class CreateIncomes < ActiveRecord::Migration[7.1]
  def change
    create_table :incomes do |t|
      t.references :member, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
