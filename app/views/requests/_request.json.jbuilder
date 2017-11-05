json.extract! request, :id, :name, :client_first, :client_last, :cost, :costVAT, :description, :number_employee, :status, :client_mail, :created_at, :updated_at
json.url request_url(request, format: :json)
