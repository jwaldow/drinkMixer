class AddCabinetToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :cabinet_id, :integer
  end
end
