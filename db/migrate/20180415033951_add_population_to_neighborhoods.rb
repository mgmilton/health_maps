class AddPopulationToNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    add_column :neighborhoods, :population, :string
  end
end
