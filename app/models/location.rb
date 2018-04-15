class Location < ApplicationRecord
  validates_presence_of :name
  has_many :neighborhoods

  def cdc_api_call
    LocationConnection.new(name).get_jsons
  end

  def write_neighborhood_health_data
    cdc_api_call.each do |raw_neighborhood|
      neighborhoods.find_or_create_by(healthcare_access: raw_neighborhood[:access2_crudeprev],
        arthritis_prevelance: raw_neighborhood[:arthritis_crudeprev],
        binge_drinking_prevelance: raw_neighborhood[:binge_crudeprev],
        high_blood_pressure_prevelance: raw_neighborhood[:bphigh_crudeprev],
        bp_medication_prevelance: raw_neighborhood[:bpmed_crudeprev],
        cancer_prevelance: raw_neighborhood[:cancer_crudeprev],
        asthma_prevelance: raw_neighborhood[:casthma_crudeprev],
        current_smoking_prevelance: raw_neighborhood[:csmoking_crudeprev],
        dental_visit_prevelance: raw_neighborhood[:dental_crudeprev],
        diabetes_prevelance: raw_neighborhood[:diabetes_crudeprev],
        high_cholesterol_prevelance: raw_neighborhood[:highchol_crudeprev],
        kidney_disease_prevelance: raw_neighborhood[:kidney_crudeprev],
        lack_of_physical_activity_prevelance: raw_neighborhood[:lpa_crudeprev],
        bad_mental_health_prevelance: raw_neighborhood[:mhlth_crudeprev],
        obesity_prevelance: raw_neighborhood[:obesity_crudeprev],
        pap_smear_prevelance: raw_neighborhood[:paptest_crudeprev],
        lack_sleep_prevelance: raw_neighborhood[:sleep_crudeprev],
        stroke_prevelance: raw_neighborhood[:stroke_crudeprev],
        teeth_loss_prevelance: raw_neighborhood[:teethlost_crudeprev],
        placefips: raw_neighborhood[:placefips],
        tractfips: raw_neighborhood[:tractfips],
        population: raw_neighborhood[:population2010],
        core_prevention_women: raw_neighborhood[:corew_crudeprev],
        core_prevention_men: raw_neighborhood[:corem_crudeprev],
        heart_disease_prevelance: raw_neighborhood[:chd_crudeprev],
        routine_checkup_prevelance: raw_neighborhood[:checkup_crudeprev]
      )
    end
  end
end
