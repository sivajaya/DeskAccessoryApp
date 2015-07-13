json.array!(@employees) do |employee|
  json.extract! employee, :id, :emp_id, :name, :email_id, :mobile_no, :designation
  json.url employee_url(employee, format: :json)
end
