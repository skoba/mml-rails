# coding: utf-8
FactoryGirl.define do
  factory :prescription do
    name '繧ｵ繝ｳ繝励Ν'

    after(:create) do |prescription|
      %i{meptin metrizin marzulen voltarengel}.each do |medication|
        create medication, prescription: prescription
      end
    end
  end
end
