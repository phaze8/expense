class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.integer :cost_id
      t.string :name
      t.string :company

      t.timestamps
    end
  end
end
