json.array!(@systems) do |system|
  json.extract! system, :id, :name, :size, :is_laptop
  json.url system_url(system, format: :json)
end
