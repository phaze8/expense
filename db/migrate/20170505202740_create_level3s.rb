class CreateLevel3s < ActiveRecord::Migration[5.1]
  def change
    create_table :level3s do |t|
      t.string :name
      t.string :code
      t.integer :level2_id

      t.timestamps
    end
  end
end
