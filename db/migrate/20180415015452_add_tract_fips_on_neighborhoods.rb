class AddTractFipsOnNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    execute "create extension hstore"
    add_column :neighborhoods, :column, :hstore
  end
end
