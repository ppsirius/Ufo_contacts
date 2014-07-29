json.array!(@cities) do |city|
  json.extract! city, :id, :id_city, :name
  json.url city_url(city, format: :json)
end
