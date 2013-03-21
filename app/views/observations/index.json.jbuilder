json.array!(@observations) do |observation|
  json.extract! observation, :item, :value, :unit
  json.url observation_url(observation, format: :json)
end