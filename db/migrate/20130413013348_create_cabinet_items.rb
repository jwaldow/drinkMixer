class CreateCabinetItems < ActiveRecord::Migration
  def change
    create_table :cabinet_items do |t|
      t.integer :ingredient_id
      t.integer :cabinet_id

      t.timestamps
    end
  end
end
