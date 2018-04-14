class AddStateToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :state, :string
    remove_column :locations, :state, :string
  end
end
