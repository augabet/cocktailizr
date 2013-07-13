class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
   	  t.integer :ingredient_id
      t.float :number

      t.timestamps
    end
  end
end
