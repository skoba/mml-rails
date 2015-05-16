json.mml do
  json.set! 'mmlPs:PrescriptionModule' do
    json.medication @prescription.medications.sort.each do |medication|
      json.medicine do
        json.name medication.name
        json.code do
          json.value medication.code
          json.system 'YJ'
        end
        json.dose medication.dose
        json.doseUnit medication.dose_unit
        if medication.frequency
          json.frequencyPerDay medication.frequency
        end
        json.startDate medication.start_date.to_s
        if medication.duration
          json.duration medication.duration
        end
        json.instruction medication.instruction
        json.batchNo medication.batchNo
        json.brandSubstitutionPermitted json.brand_alternative if json.brand_alternative
      end
    end
  end
end
