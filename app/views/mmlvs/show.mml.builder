xml.instruct!
xml.mmlVs(:VitalSignModule, {
 'xmlns:mmlNm' => "http://www.medxml.net/MML/SharedComponent/Name/1.0",
 'xmlns:mmlCm' => "http://www.medxml.net/MML/SharedComponent/Common/1.0",
 'xmlns:mmlVs' => "http://www.medxml.net/MML/ContentModule/VitalSign/1.0",
 'xmlns:mmlPi' => "http://www.medxml.net/MML/ContentModule/PatientInfo/1.0",
 'xmlns:xsd' => "http://www.w3.org/2001/XMLSchema",
 'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
 'xsi:schemaLocation' => "http://www.medxml.net/MML/ContentModule/VaitalSign/1.0"}) do

  xml.mmlVs :context , registID: @mmlvs.id.to_s, registTime: @mmlvs.created_at.to_s do
    xml.mmlPi :PatientModule do
      xml.mmlPi :uniqueInfo do
        xml.mmlPi :masterId do
          xml.mmlCm :Id, 'mmlCm:type'=>"facility", 'mmlCm:tableId'=>"MML0024" do
            '12345AA'
          end
        end
      end
      xml.mmlPi:personName do
        xml.mmlNm:Name do #('mmlNm:repCode'=>"A") do
          xml.mmlNm :family, '京大'
          xml.mmlNm :given, '太郎'
        end
      end
      xml.mmlPi :birthday, '1923-4-5'
      xml.mmlPi :sex, 'M'
    end
  end
  @mmlvs.vital_signs.each do |vitalsign|
    xml.mmlVs:item do
      xml.mmlVs :itemName, vitalsign.type
      xml.mmlVs :numValue, vitalsign.val
      xml.mmlVs :unit, vitalsign.unit
    end
  end
  xml.mmlVs :observedTime, @mmlvs.updated_at
end
