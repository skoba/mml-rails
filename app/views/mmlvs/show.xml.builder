xml.instruct!
xml.mml(
        'xmlns:mmlVs'=>"http://www.medxml.net/MML/ContentModule/VitalSign/1.0",
        'xmlns:xhtml'=>"http://www.w3.org/1999/xhtml") do
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
