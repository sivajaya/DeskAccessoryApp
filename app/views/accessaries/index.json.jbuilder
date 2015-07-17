json.array!(@accessaries) do |accessary|
  json.extract! accessary, :id, :employee_id, :moniter_id, :system_id, :items
  json.url accessary_url(accessary, format: :json)
end
