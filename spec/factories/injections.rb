# coding: utf-8
FactoryGirl.define do
  factory :injection do
    name 'サンプル注射'
    after(:create) do |injection|
      %i{lactec vitamedin cefamezin}.each do |regimen|
        create regimen, injection: injection
      end
    end
  end
end
