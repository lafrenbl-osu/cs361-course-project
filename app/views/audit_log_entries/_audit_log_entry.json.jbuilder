json.extract! audit_log_entry, :id, :action, :employee_id, :record_id, :before_state, :after_state, :created_at, :updated_at
json.url audit_log_entry_url(audit_log_entry, format: :json)
