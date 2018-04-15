class AddHealthMeasuresToNeighborhoods < ActiveRecord::Migration[5.1]
  def change
    add_column :neighborhoods, :healthcare_access, :string
    add_column :neighborhoods, :arthritis_prevelance, :string
    add_column :neighborhoods, :binge_drinking_prevelance, :string
    add_column :neighborhoods, :high_blood_pressure_prevelance, :string
    add_column :neighborhoods, :bp_medication_prevelance, :string
    add_column :neighborhoods, :cancer_prevelance, :string
    add_column :neighborhoods, :asthma_prevelance, :string
    add_column :neighborhoods, :current_smoking_prevelance, :string
    add_column :neighborhoods, :dental_visit_prevelance, :string
    add_column :neighborhoods, :diabetes_prevelance, :string
    add_column :neighborhoods, :high_cholesterol_prevelance, :string
    add_column :neighborhoods, :kidney_disease_prevelance, :string
    add_column :neighborhoods, :lack_of_physical_activity_prevelance, :string
    add_column :neighborhoods, :mammography_prevelance, :string
    add_column :neighborhoods, :bad_mental_health_prevelance, :string
    add_column :neighborhoods, :obesity_prevelance, :string
    add_column :neighborhoods, :pap_smear_prevelance, :string
    add_column :neighborhoods, :lack_sleep_prevelance, :string
    add_column :neighborhoods, :stroke_prevelance, :string
    add_column :neighborhoods, :teeth_loss_prevelance, :string
  end
end
