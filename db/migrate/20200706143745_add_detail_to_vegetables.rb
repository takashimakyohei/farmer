class AddDetailToVegetables < ActiveRecord::Migration[5.2]
  def change
    add_column :vegetables, :price, :integer
    add_column :vegetables, :content, :string
  end
end
