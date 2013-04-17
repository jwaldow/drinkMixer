class AddUserToCabinet < ActiveRecord::Migration
  def change
    add_column :cabinets, :user_id, :integer
  end
end
