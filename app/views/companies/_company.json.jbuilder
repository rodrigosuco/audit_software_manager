json.extract! company, :id, :name, :address, :cnpj, :employees_number, :scope, :contact_person, :email, :telephone, :created_at, :updated_at
json.url company_url(company, format: :json)
