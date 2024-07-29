class Company
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :address, type: String
  field :cnpj, type: String
  field :employees_number, type: Integer
  field :scope, type: String
  field :contact_person, type: String
  field :email, type: String
  field :telephone, type: String
end
