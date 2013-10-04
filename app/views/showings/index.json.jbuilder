json.array!(@showings) do |showing|
  json.extract! showing, :location, :time
  json.url showing_url(showing, format: :json)
end
