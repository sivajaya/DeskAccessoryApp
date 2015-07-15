json.array!(@moniters) do |moniter|
  json.extract! moniter, :id, :screen
  json.url moniter_url(moniter, format: :json)
end
