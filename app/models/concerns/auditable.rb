module Auditable
  extend ActiveSupport::Concern

  included do
    after_create :audit_log_of_create, if: -> { Employee.count > 0 }
  end

  def audit_log_of_create
    @entry = AuditLogEntry.create!(
      action: :created,
      employee: Employee.first,
      before_state: nil,
      after_state: JSON.pretty_generate(as_json),
      record: self
    )
  end
end