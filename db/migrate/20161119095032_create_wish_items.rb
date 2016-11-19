class CreateWishItems < ActiveRecord::Migration[5.0]
  def change
    create_table :wish_items do |t|
      t.string :name
      t.text :description
      t.string :price
      t.string :image
      t.text :url
      t.references :wish_list, foreign_key: true

      t.timestamps
    end
  end
end
