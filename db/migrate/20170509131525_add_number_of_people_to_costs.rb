class AddNumberOfPeopleToCosts < ActiveRecord::Migration[5.1]
  def change
    add_column :costs, :number_of_people, :integer
    add_column :costs, :people_names, :string
  end
end
