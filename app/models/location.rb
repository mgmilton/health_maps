class Location < ApplicationRecord
  validates_presence_of :name
  has_many :neighborhoods

  def cdc_api_call
    LocationConnection.new(name).get_jsons
  end

  def write_neighborhood_health_data
    cdc_api_call.each do |raw_neighborhood|
      neighborhoods.find_or_create_by(access_to_healthcare: raw_neighborhood[:access2_crudeprev],
        arthritis_prevalence: raw_neighborhood[:arthritis_crudeprev],
        binge_drinking_prevalence: raw_neighborhood[:binge_crudeprev],
        high_blood_pressure_prevalence: raw_neighborhood[:bphigh_crudeprev],
        high_blood_pressure_prevalence: raw_neighborhood[:bpmed_crudeprev],
        cancer_prevalence: raw_neighborhood[:cancer_crudeprev],
        asthma_prevalence: raw_neighborhood[:casthma_crudeprev],
        current_smoking_prevalence: raw_neighborhood[:csmoking_crudeprev],
        dental_visit_prevalence: raw_neighborhood[:dental_crudeprev],
        diabetes_prevalence: raw_neighborhood[:diabetes_crudeprev],
        high_cholesterol_prevalence: raw_neighborhood[:highchol_crudeprev],
        kidney_disease_prevalence: raw_neighborhood[:kidney_crudeprev],
        lack_of_physical_activity_prevalence: raw_neighborhood[:lpa_crudeprev],
        bad_mental_health_prevalence: raw_neighborhood[:mhlth_crudeprev],
        obesity_prevalence: raw_neighborhood[:obesity_crudeprev],
        pap_smear_prevalence: raw_neighborhood[:paptest_crudeprev],
        lack_of_sleep_prevalence: raw_neighborhood[:sleep_crudeprev],
        stroke_prevalence: raw_neighborhood[:stroke_crudeprev],
        teeth_loss_prevalence: raw_neighborhood[:teethlost_crudeprev],
        placefips: raw_neighborhood[:placefips],
        tractfips: raw_neighborhood[:tractfips],
        population: raw_neighborhood[:population2010],
        heart_disease_prevalence: raw_neighborhood[:chd_crudeprev],
        routine_checkup_prevalence: raw_neighborhood[:checkup_crudeprev]
      )
    end
  end
end
