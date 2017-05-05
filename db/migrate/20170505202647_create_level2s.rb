class CreateLevel2s < ActiveRecord::Migration[5.1]
  def change
    create_table :level2s do |t|
      t.string :name
      t.integer :level1_id
      t.timestamps
    end
  end
end
