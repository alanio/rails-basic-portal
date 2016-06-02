json.array!(@markers) do |marker|
  json.extract! marker, :id, :name
  json.url marker_url(marker, format: :json)
end
