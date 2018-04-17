FactoryBot.define do
  factory :location do
    id 22
    name "Portland"
    coordinates ["-70.2568189", "43.6590993"]
  end

  factory :neighborhood do
    location
    placefips "222"
    tractfips "222"
    population "2222"
    access_to_healthcare 33
    arthritis_prevalence 33
    binge_drinking_prevalence 33
    high_blood_pressure_prevalence 33
    cancer_prevalence 33
    asthma_prevalence 33
    current_smoking_prevalence 33
    dental_visit_prevalence 33
    diabetes_prevalence 33
    high_cholesterol_prevalence 33
    kidney_disease_prevalence 33
    lack_of_physical_activity_prevalence 33
    mammography_prevalence 33
    bad_mental_health_prevalence 33
    obesity_prevalence 33
    pap_smear_prevalence 33
    lack_of_sleep_prevalence 33
    stroke_prevalence 33
    teeth_loss_prevalence 33
    heart_disease_prevalence 33
    routine_checkup_prevalence 33
  end
end
