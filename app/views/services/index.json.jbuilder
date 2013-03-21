json.array!(@services) do |service|
  json.extract! service, :type, :action_datetime
  json.url service_url(service, format: :json)
end