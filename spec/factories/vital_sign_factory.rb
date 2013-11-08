FactoryGirl.define do
  factory :vital_sign do
    type  "Systolic blood pressure"
    val   130
    unit  "mmHg"
    mmlvs
  end

  factory :mmlvs do
    observed_time '2013-11-07T09:45:00'
    factory :mmlvs_with_vital_signs do
      after(:create) do |mmlvs, evaluator|
        FactoryGirl.create_list(:vital_sign, 5, mmlvs: mmlvs)
      end
    end
  end

  factory :sbp do
    type 'Systolic blood pressure'
    val 130
    unit 'mmHg'
    mmlvs
  end

  factory :dbp do
    type 'Diastolic blood pressure'
    val 80
    unit 'mmHg'
    mmlvs
  end

  factory :pulse do
    type 'Pulse'
    val 64
    unit '/min'
    mmlvs
  end

  factory :bt do
    type 'Body Temperature'
    val 36.4
    unit 'centigrade'
    mmlvs
  end
end
