class CreateSneakers < ActiveRecord::Migration[5.2]
  def change
    create_table :sneakers do |t|
      t.string :name
      t.integer :price
      t.string :brand
      t.string :image_url
      t.string :colorway
      t.string :description

      t.timestamps
    end
  end
end
