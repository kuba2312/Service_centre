json.extract! employee, :id, :nickname, :first_name, :last_name, :function, :created_at, :updated_at
json.url employee_url(employee, format: :json)
