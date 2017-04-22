class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :userName
      t.integer :prime
      t.string :name
      t.integer :prep
      t.integer :complete
      t.text :ingredients
      t.text :directions
      t.integer :secondary

      t.timestamps
    end
  end
end
