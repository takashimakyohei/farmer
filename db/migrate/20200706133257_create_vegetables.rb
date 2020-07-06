class CreateVegetables < ActiveRecord::Migration[5.2]
  def change
    create_table :vegetables do |t|
      t.string :title
      t.integer :shop_id
      t.text :description
      t.string :prefecture
      t.string :image

      t.timestamps
    end
  end
end
