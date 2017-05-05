class CreateLevel1s < ActiveRecord::Migration[5.1]
  def change
    create_table :level1s do |t|
      t.string :name

      t.timestamps
    end
  end
end
