# -*- coding: utf-8 -*-
xml.instruct!
xml.mmlVs:VitalSignModule(
 'xmlns:mmlNm'=>"http://www.medxml.net/MML/SharedComponent/Name/1.0",
 'xmlns:mmlCm'=>"http://www.medxml.net/MML/SharedComponent/Common/1.0",
 'xmlns:mmlVs'=>"http://www.medxml.net/MML/vaitalsign/1.0",
 'xmlns:mmlPi'=>"http://www.medxml.net/MML/ContentModule/PatientInfo/1.0",
 'xmlns:xsd' =>"http://www.w3.org/2001/XMLSchema",
 'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
 'xsi:schemaLocation'=>"http://www.medxml.net/MML/vaitalsign/1.0") do
  xml.mmlVs:context(registID: @mmlvs.id.to_s, registTime: @mmlvs.created_at.to_s) do
    xml.mmlPi:PatientModule do
      xml.mmlPi:uniqueInfo do
        xml.mmlPi:masterId do
          xml.mmlCm:Id('mmlCm:type'=>"facility", 'mmlCm:tableId'=>"MML0024") '12345AA'
        end
      end
      xml.mmlPi:personName do
        xml.mmlNm:Name('mmlNm:repCode'=>"A") do
          xml.mmlNm:family '京大'
          xml.mmlNm:given '太郎'
        end
      end
      xml.mmlPi:birthday '1923-4-5'
      xml.mmlPi:sex 'M'
    end
  end
  @mmlvs.vital_sings.each do |vitaisign|
    xml.mmlVs:item do
      xml.mmlVs:itemName vitalsign.type
      xml.mmlvs:numValue vitaisign.val
      xml.mmlvs:unit vitaisign.unit
    end
  end
end
#   xml.body do
#     xml.section do
#       xml.paragraph do
#         xml.content do
#           xml.local_markup('descriptor'=>"", 'render'=>"MML") do
#             xml.tag!('mml:docInfo','contentModuleType="vitalsign"')
#             xml.mml:securityLevel do
#               xml.tag!('mml:accessRight', 'permit="ALL"')
#             end
#           end
#         end
#       end #paragraph
#       xml.paragraph do
#         xml.local_markup('descriptor'=>"", 'render'=>"MML") do
#           xml.mmlVs:VitalSignModule do
#             xml.tag!(%Q{mmlVs:information mmlVs:recordId="#{@mmlvs.id}" mmlVs:recordTime="#{@mmlvs.created_at} "})
#             xml.mmlVs:VitalSign do
#               @mmlvs.vital_signs.each do |vitalsign|
#                 xml.mmlVs:item do
#                   xml.tag!('mmlVs:itemName ', vitalsign.type)
#                   xml.tag!('mmlVs:numValue', vitalsign.val)
#                   xml.tag!('mmlVs:unit', vitalsign.unit)
#                 end
#               end
#             end
#           end
#         end
#       end
#     end
#   end
# end
