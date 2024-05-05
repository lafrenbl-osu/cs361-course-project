class AuditLogEntry < ApplicationRecord
  belongs_to :employee
  belongs_to :record, polymorphic: true
end
