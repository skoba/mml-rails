xml.instruct!
xml.mml('xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance",
        'xmlns:xsd' =>"http://www.w3.org/2001/XMLSchema",
        'xmlns' => "http://www.medxml.org/v4") do
  xml.mmlVs:VitalSignModule do
    xml.tag!(%Q{mmlVs:information mmlVs:recordId="#{@mmlvs.id}" mmlVs:recordTime="#{@mmlvs.created_at} "})
    xml.mmlVs:VitalSign do
      @mmlvs.vital_signs.each do |vitalsign|
        xml.mmlVs:item do
          xml.tag!('mmlVs:itemName', vitalsign.type)
          xml.tag!('mmlVs:numValue', vitalsign.val)
          xml.tag!('mmlVs:unit', vitalsign.unit)
        end
      end
    end
  end
end
