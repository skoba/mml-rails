json.mml do
  json.set! 'mmlInj:InjectionModule' do
    json.medication @injection.regimen.sort.each do |regimen|
      json.medicine do
        json.name regimen.name
        json.code do
          json.value regimen.code
          json.system 'YJ'
        end
        json.dose regimen.dose
        json.doseUnit regimen.dose_unit
        json.startTime regimen.start_time.to_s
        json.endTime regimen.end_time.to_s
        json.instruction regimen.instruction
        json.route regimen.route
        json.site regimen.site
        json.deliveryMethod regimen.delivery_method
        json.batchNo regimen.batch_no
      end
    end
  end
end

