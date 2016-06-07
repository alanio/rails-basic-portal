json.array!(@publishers) do |publisher|
  json.extract! publisher, :id, :name, :status
  json.url publisher_url(publisher, format: :json)
end
