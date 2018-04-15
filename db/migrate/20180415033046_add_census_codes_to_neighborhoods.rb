class AddCensusCodesToNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    add_column :neighborhoods, :placefips, :string
    add_column :neighborhoods, :tractfips, :string
  end
end
