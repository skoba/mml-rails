json.array!(@intakes) do |intake|
  json.extract! intake, :type, :volume, :unit
  json.url intake_url(intake, format: :json)
end