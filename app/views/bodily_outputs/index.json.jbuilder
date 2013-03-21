json.array!(@bodily_outputs) do |bodily_output|
  json.extract! bodily_output, :type, :volume, :unit, :color, :status
  json.url bodily_output_url(bodily_output, format: :json)
end