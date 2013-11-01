# -*- coding: utf-8 -*-
xml.instruct!
xml.mml('xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
        'xmlns:xsd' =>"http://www.w3.org/2001/XMLSchema",
        'xmlns' => "http://www.medxml.org/v4") do
  xml.clinical_document_header do
    xml.id('AAN'=>'テスト病院', 'EX' => '12345', 'RT' => '1.2.840.114319.1.5.1.1.1.1.1')
    xml.document_type_cd('DN'=>"MML Document",'S'=>"1.2.840.114319.1.1", 'V'=>"0300")
    xml.original_dttm('V'=>"")
    xml.provider do
      xml.tag!('provider.type_cd V="CON"')
      xml.person do
        xml.id 'EX="000123" RT="2.16.840.1.113883.5.200"'
      end
      xml.patient do
        xml.tag!('patient.type_cd V="PAT"')
        xml.person do
          xml.id 'EX="12345" RT="1.2.840.114319.1.5.1.1.1.1.1"'
          xml.person_name do
            xml.nm do
              xml.tag('GIV V="太郎"')
              xml.tag('FAM V="山田"')
            end
          end
        end
      end
    end
    xml.local_header('descriptor'=>"mmlheader", 'render'=>"MML") do
      xml.mml:MmlHeader do
        xml.mmlCi:CreatorInfo do
          xml.mmlPsi:PersonalizedInfo do
            xml.tag!('mmlCm:Id','111111','mmlCm:tableId' => "JPN432101234567", 'mmlCm:type' =>"facility")
            xml.mmlPsi:personName do
              xml.tag!('mmlNm:Name') do
                xml.tag!('mmlNm:fullName','看護師花子')
              end
            end
          end
        end
        xml.mml:toc do
          xml.tag!('mml:tocItem','http://www.w3.org/1999/xhtml')
          xml.tag!('mml:tocItem','http://www.medxml.net/MML/SharedComponent/Common/1.0')
          xml.tag!('mml:tocItem','http://www.medxml.net/MML/SharedComponent/Name/1.0')
          xml.tag!('mml:tocItem','http://www.medxml.net/MML/SharedComponent/Facility/1.0')
          xml.tag!('mml:tocItem','http://www.medxml.net/MML/SharedComponent/Department/1.0')
          xml.tag!('mml:tocItem','http://www.medxml.net/MML/SharedComponent/Address/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/SharedComponent/Phone/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/SharedComponent/PersonalizedInfo/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/SharedComponent/CreatorInfo/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/SharedComponent/Security/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/PatientInfo/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/BaseClinic/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/FirstClinic/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/HealthInsurance/1.1')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/Lifestyle/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/ProgressCourse/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/RegisteredDiagnosis/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/Surgery/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/Summary/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/test/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/report/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/Referral/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/MML/ContentModule/VitalSign/1.0')
        xml.tag!('mml:tocItem','http://www.medxml.net/claim/claimAmountModule/2.1')
        xml.tag!('mml:tocItem','http://www.medxml.net/claim/claimModule/2.1')

        end
      end
    end
  end
  xml.body do
    xml.section do
      xml.paragraph do
        xml.content do
          xml.local_markup('descriptor'=>"", 'render'=>"MML") do
            xml.tag!('mml:docInfo','contentModuleType="vitalsign"')
            xml.mml:securityLevel do
              xml.tag!('mml:accessRight', 'permit="ALL"')
            end
          end
        end
      end #paragraph
      xml.paragraph do
        xml.local_markup('descriptor'=>"", 'render'=>"MML") do
          xml.mmlVs:VitalSignModule do
            xml.tag!(%Q{mmlVs:information mmlVs:recordId="#{@mmlvs.id}" mmlVs:recordTime="#{@mmlvs.created_at} "})
            xml.mmlVs:VitalSign do
              @mmlvs.vital_signs.each do |vitalsign|
                xml.mmlVs:item do
                  xml.tag!('mmlVs:itemName ', vitalsign.type)
                  xml.tag!('mmlVs:numValue', vitalsign.val)
                  xml.tag!('mmlVs:unit', vitalsign.unit)
                end
              end
            end
          end
        end
      end
    end
  end
end
