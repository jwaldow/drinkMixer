class AlterIngredientType < ActiveRecord::Migration
  def up
  	rename_column :ingredients, :type, :ingredient_type
  end

  def down
  	rename_column :ingredients, :ingredient_type, :type
  end
end
