module Auditable
  extend ActiveSupport::Concern

  included do
    after_create :audit_log_of_create, if: -> { Employee.count > 0 }
  end

  def audit_log_of_create
    @entry = AuditLog.create(
      action: :created,
      employee_id: Employee.first.id,
      before_state: nil,
      after_state: JSON.pretty_generate(as_json),
      record_id: self.id,
      record_type: self.class.name
    )
  end
end