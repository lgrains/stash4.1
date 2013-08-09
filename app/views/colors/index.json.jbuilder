json.array!(@colors) do |color|
  json.extract! color, 
  json.url color_url(color, format: :json)
end
