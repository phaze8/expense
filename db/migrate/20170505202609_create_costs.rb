class CreateCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :costs do |t|
      t.string :submitter
      t.date :expense_date, null: false
      t.integer :level1_id, null: false
      t.integer :level2_id, null: false
      t.integer :level3_id, null: false
      t.float :amount, null: false
      t.string :comments

      t.timestamps
    end
  end
end
