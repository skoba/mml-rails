# coding: utf-8
FactoryGirl.define do
  factory :lactec, class: Regimen do
    injection
    name "ラクテック 500ml"
    code "12304155"
    dose 500
    dose_unit "ml"
    start_time "2015-05-13T13:00:00"
    end_time "2015-05-13T15:00:00"
    instruction "2時間で投与する"
    route "右前腕静脈ルート"
    site "右前腕"
    delivery_method "点滴静注"
    batch_no 1
  end

  factory :vitamedin, class: Regimen do
    injection
    name "ビタメジン静注用"
    code '553300555'
    dose 1
    dose_unit "V"
    start_time "2015-05-13T13:00:00"
    end_time "2015-05-13T15:00:00"
    instruction "2時間で投与する"
    route "右前腕静脈ルート"
    site "右前腕"
    delivery_method "点滴静注"
    batch_no 1
  end

  factory :cefamezin, class: Regimen do
    injection
    name "セファメジンα 2g キット"
    code "14433344"
    dose 1
    dose_unit "キット"
    start_time "2015-05-13T16:00:00"
    end_time "015-05-13T17:00:00"
    instruction "1時間で投与する"
    route "中心静脈メイン側管"
    site "左鎖骨下静脈"
    delivery_method "中心静脈注射"
    batch_no 2
  end
end
