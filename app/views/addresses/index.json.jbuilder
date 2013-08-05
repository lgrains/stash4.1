json.array!(@addresses) do |address|
  json.extract! address, 
  json.url address_url(address, format: :json)
end
