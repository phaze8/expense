class AddTempToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :temp, :string
  end
end
