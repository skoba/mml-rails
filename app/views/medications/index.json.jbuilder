json.array!(@medications) do |medication|
  json.extract! medication, :id, :prescription_id, :name, :code, :dose, :dose_unit, :frequency, :duration, :instruction, :prn, :route, :form, :batchNo, :brand_alternative, :long_term
  json.url medication_url(medication, format: :json)
end
