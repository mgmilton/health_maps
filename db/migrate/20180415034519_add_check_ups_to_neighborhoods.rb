class AddCheckUpsToNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    add_column :neighborhoods, :core_prevention_women, :string
    add_column :neighborhoods, :core_prevention_men, :string
    add_column :neighborhoods, :heart_disease_prevelance, :string
    add_column :neighborhoods, :routine_checkup_prevelance, :string
  end
end
