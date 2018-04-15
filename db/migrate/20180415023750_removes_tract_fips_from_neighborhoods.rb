class RemovesTractFipsFromNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    remove_column :neighborhoods, :column, :hstore
  end
end
