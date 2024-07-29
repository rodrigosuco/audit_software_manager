class Cost
  include Mongoid::Document
  include Mongoid::Timestamps
  field :audit_local, type: String
  field :audit_stage, type: String
  field :audit_year, type: Integer
  field :man_days, type: Decimal
  field :md_cost, type: Decimal
  field :fee, type: Decimal
  field :travel_expenses, type: Decimal
  field :total_cost, type: Decimal
  field :proposal, type: Reference
end
