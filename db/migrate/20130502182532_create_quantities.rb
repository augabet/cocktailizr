class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.float :dose
      t.integer :cocktail_id
      t.integer :ingredient_id

      t.timestamps
    end
   	add_index :quantities, :cocktail_id
    add_index :quantities, :ingredient_id
  end
end
