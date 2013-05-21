json.array!(@archetypes) do |archetype|
  json.extract! archetype, :uid, :archetypeid
  json.url archetype_url(archetype, format: :json)
end