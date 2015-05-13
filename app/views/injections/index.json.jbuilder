json.array!(@injections) do |injection|
  json.extract! injection, :id
  json.url injection_url(injection, format: :json)
end
