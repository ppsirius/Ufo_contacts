json.array!(@contacts) do |contact|
  json.extract! contact, :id, :city, :date, :contact_num
  json.url contact_url(contact, format: :json)
end
