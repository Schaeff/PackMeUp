json.array!(@countries) do |country|
  json.extract! country, :id, :name, :flag, :weatherLink
  json.url country_url(country, format: :json)
end
