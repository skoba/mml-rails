# coding: utf-8
FactoryGirl.define do
  factory :meptin, class: Medication do
    prescription
    name "メプチン錠　０．０５ｍｇ"
    code "61222033"
    dose 1
    dose_unit "錠"
    frequency 1
    start_date "2015-05-13" 
    duration 14
    instruction "内服 1回 朝食前"
    prn "false"
    route "経口"
    form "錠剤"
    batchNo 1
    brand_alternative "true"
    long_term "no"
  end

  factory :metrizin, class: Medication do
    prescription
    name "メトリジン錠２ｍｇ"
    code "612160027"
    dose 1
    dose_unit "錠"
    frequency 2
    start_date "2015-05-13" 
    duration 14
    instruction "内服 2回 朝夕食後"
    prn "false"
    route "経口"
    form "錠剤"
    batchNo 2
    brand_alternative "true"
    long_term "no"    
  end

  factory :marzulen, class: Medication do
    prescription
    name "マーズレンＳ顆粒"
    code "612160027"
    dose 0.5
    dose_unit "g"
    frequency 2
    start_date "2015-05-13" 
    duration 14
    instruction "内服 2回 朝夕食後"
    prn "false"
    route "経口"
    form "散剤"
    batchNo 2
    brand_alternative "true"
    long_term "no"    
  end

  factory :voltarengel, class: Medication do
    prescription
    name "ジクロフェナクnaゲル"
    code "612320261"
    dose 50
    dose_unit "g"
    frequency nil
    start_date "2015-05-13" 
    duration nil
    instruction "1日3回左膝に塗布"
    prn "false"
    route "皮膚"
    form "軟膏"
    batchNo 3
    brand_alternative "true"
    long_term "no"    
  end
end
