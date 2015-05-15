xml.instruct!
xml.mml('xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
        'xmlns:xsd' =>"http://www.w3.org/2001/XMLSchema",
        'xmlns:mml' => "http://www.medxml.org/v4",
        'xmlns:mmlInj' => "http://www.medxml.org/v4/InjectionModule") do
  xml.mmlInj:InjectionModule do
    @injection.regimen.sort.each do |regimen|
      xml.mmlInj:medication do
        xml.mmlInj:medicine do
          xml.tag! 'mmlInj:name', regimen.name
          xml.tag! 'mmlInj:code', regimen.code, {'system' => 'YJ'}
        end
        xml.tag! 'mmlInj:dose', regimen.dose
        xml.tag! 'mmlInj:doseUnit', regimen.dose_unit
        xml.tag! 'mmlInj:startTime', regimen.start_time.to_s
        xml.tag! 'mmlInj:endTime', regimen.end_time.to_s
        xml.tag! 'mmlInj:instruction', regimen.instruction
        xml.tag! 'mmlInj:route', regimen.route
        xml.tag! 'mmlInj:site', regimen.site
        xml.tag! 'mmlInj:deliveryMethod', regimen.delivery_method
        xml.tag! 'mmlInj:batchNo', regimen.batch_no
      end
    end
  end
end
