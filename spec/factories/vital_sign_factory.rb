FactoryGirl.define do
  factory :vital_sign do
    type  "Systolic Blood Pressure"
    val   130
    unit  "mmHg"
    mmlvs
  end

  factory :mmlvs do
    factory :mmlvs_with_vital_signs do
      after(:create) do |mmlvs, evaluator|
        FactoryGirl.create_list(:vital_sign, 5, mmlvs: mmlvs)
      end
    end
  end

  factory :sbp do
    type 'Systolic Blood Pressure'
    val 130
    unit 'mmHg'
    mmlvs
  end

  factory :dbp do
    type 'Diastolic Blood Pressure'
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
