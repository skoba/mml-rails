json.mml do
  json.set! 'mmlInj:InjectionModule' do
    @injection.regimen.sort.each do |regimen|
      json.medicine do
        json.name regimen.name
        json.code do
          json.value regimen.code
          json.system 'YJ'
        end
        json.dose regimen.dose
        json.doseUnit regimen.dose_unit
      end
    end
  end
end

