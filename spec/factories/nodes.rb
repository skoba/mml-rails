# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :node do
    path "MyString"
    atcode "MyString"
    rmclass "MyString"
    txt_value "MyString"
    int_value 1
    flt_value 1.5
  end
end
