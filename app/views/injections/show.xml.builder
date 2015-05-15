xml.instruct!
xml.mml('xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
        'xmlns:xsd' =>"http://www.w3.org/2001/XMLSchema",
        'xmlns:mml' => "http://www.medxml.org/v4",
        'xmlns:mmlInj' => "http://www.medxml.org/v4/InjectionModule") do
  xml.mmlPs:InjectionModule do
    @injection.regimen.sort.each do |regimen|
      xml.mmlPs:medication do
        xml.mmlPs:medicine do
          xml.tag! 'mmlPs:name', medication.name
          xml.tag! 'mmlPs:code', medication.code, {'system' => 'YJ'}
        end
        xml.tag! 'mmlPs:dose', medication.dose
        xml.tag! 'mmlPs:doseUnit', medication.dose_unit
        if medication.frequency
          xml.tag! 'mmlPs:frequencyPerDay', medication.frequency 
        end
        xml.tag! 'mmlPs:startDate', medication.start_date.to_s
        if medication.duration
          xml.tag! 'mmlPs:duration', medication.duration
        end
        xml.tag! 'mmlPs:instruction', medication.instruction
        xml.tag! 'mmlPs:batchNo', medication.batchNo
        xml.tag! 'mmlPs:brandSubstitutionPermitted', medication.brand_alternative
      end
    end
  end
end
