xml.instruct!
xml.declare! 'DOCTYPE levelone SYSTEM "MML_4.0_levelone_1.0.dtd"'
xml.levelone(
  'xmlns:claim' => "http://www.medxml.net/claim/claimModule/2.1",
  'xmlns:claimA' => "http://www.medxml.net/claim/claimAmountModule/2.1",
  'xmlns:mml' => "http://www.medxml.net/MML",
  'xmlns:mmlAd' => "http://www.medxml.net/MML/SharedComponent/Address/1.0",
  'xmlns:mmlBc' => "http://www.medxml.net/MML/ContentModule/BaseClinic/1.0",
  'xmlns:mmlCi' => "http://www.medxml.net/MML/SharedComponent/CreatorInfo/1.0",
  'xmlns:mmlCm' => "http://www.medxml.net/MML/SharedComponent/Common/1.0",
  'xmlns:mmlDp'=>"http://www.medxml.net/MML/SharedComponent/Department/1.0",
  'xmlns:mmlFc'=>"http://www.medxml.net/MML/SharedComponent/Facility/1.0",
  'xmlns:mmlFcl'=>"http://www.medxml.net/MML/ContentModule/FirstClinic/1.0",
  'xmlns:mmlHi'=>"http://www.medxml.net/MML/ContentModule/HealthInsurance/1.1",
  'xmlns:mmlLb'=>"http://www.medxml.net/MML/ContentModule/test/1.0",
  'xmlns:mmlLs'=>"http://www.medxml.net/MML/ContentModule/Lifestyle/1.0",
  'xmlns:mmlNm'=>"http://www.medxml.net/MML/SharedComponent/Name/1.0",
  'xmlns:mmlPc'=>"http://www.medxml.net/MML/ContentModule/ProgressCourse/1.0",
  'xmlns:mmlPh'=>"http://www.medxml.net/MML/SharedComponent/Phone/1.0",
  'xmlns:mmlPi'=>"http://www.medxml.net/MML/ContentModule/PatientInfo/1.0",
  'xmlns:mmlPsi'=>"http://www.medxml.net/MML/SharedComponent/PersonalizedInfo/1.0",
  'xmlns:mmlRd'=>"http://www.medxml.net/MML/ContentModule/RegisteredDiagnosis/1.0",
  'xmlns:mmlRe'=>"http://www.medxml.net/MML/ContentModule/Referral/1.0",
  'xmlns:mmlRp'=>"http://www.medxml.net/MML/ContentModule/report/1.0",
  'xmlns:mmlSc'=>"http://www.medxml.net/MML/SharedComponent/Security/1.0",
  'xmlns:mmlSg'=>"http://www.medxml.net/MML/ContentModule/Surgery/1.0",
  'xmlns:mmlSm'=>"http://www.medxml.net/MML/ContentModule/Summary/1.0",
  'xmlns:xhtml'=>"http://www.w3.org/1999/xhtml") do
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
      xml.tag!('mml:tocItem','http://www.medxml.net/claim/claimAmountModule/2.1')
      xml.tag!('mml:tocItem','http://www.medxml.net/claim/claimModule/2.1')
    end
  end
  xml.Mml do
  
  
  end
end
