class AddImageToCosts < ActiveRecord::Migration[5.1]
  def change
    add_column :costs, :image, :string
  end
end
