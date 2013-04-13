class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :brand
      t.string :type

      t.timestamps
    end
  end
end
