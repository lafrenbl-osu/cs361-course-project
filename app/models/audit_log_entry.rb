class AuditLogEntry < ApplicationRecord
  belongs_to :employee
  belongs_to :record, polymorphic: true

  enum :action, [:created, :viewed, :updated, :deleted]
end
