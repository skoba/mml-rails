json.array!(@regimen) do |regiman|
  json.extract! regiman, :id, :injection_id, :name, :code, :dose, :dose_unit, :start, :end, :instruction, :route, :site, :delivery_method, :batch_no
  json.url regiman_url(regiman, format: :json)
end
