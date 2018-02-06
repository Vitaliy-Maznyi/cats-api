class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :img_url
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
