require 'bson'

class Cost
  include Mongoid::Document
  include Mongoid::Timestamps

  field :audit_local, type: String
  field :audit_stage, type: String
  field :audit_year, type: Integer
  field :man_days, type: BSON::Decimal128
  field :md_cost, type: BSON::Decimal128
  field :fee, type: BSON::Decimal128
  field :travel_expenses, type: BSON::Decimal128
  field :total_cost, type: BSON::Decimal128

  belongs_to :proposal

  before_save :set_total_cost

  private

  def set_total_cost
    md_sum = self.md_cost.to_d * self.man_days.to_d
    self.total_cost = md_sum + self.fee.to_d + self.travel_expenses.to_d
  end

end