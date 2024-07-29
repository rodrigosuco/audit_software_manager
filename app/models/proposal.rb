class Proposal
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :audit_standard, type: String
  field :accreditation, type: String
  field :company, type: Reference
end
