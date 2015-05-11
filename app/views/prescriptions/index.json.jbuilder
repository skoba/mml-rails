json.array!(@prescriptions) do |prescription|
  json.extract! prescription, :id, :batch, :instruction
  json.url prescription_url(prescription, format: :json)
end
