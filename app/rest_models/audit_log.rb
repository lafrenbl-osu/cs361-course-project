class AuditLog < RestModelBase
  ACTIONS = [:created, :viewed, :updated, :deleted]

  class << self
    def all_path
      '/audit-log-entries'
    end

    def create_path
      '/audit-log-entry'
    end

    def create(params)
      action = ACTIONS.index(params[:action])
      raise "invalid action" if action.blank?
      params[:action] = action
      super(params)
    end

    def find(id)
      response = http_client.get("/audit-log-entry/#{id}")
      self.new(json_str: response.body)
    end

    def base_url
      ENV["AUDIT_LOG_SERVICE_URL"]
    end
  end

  def employee
    Employee.find(employee_id)
  end

  def record
    klass = record_type.constantize
    klass.find(record_id)
  end

  def action
    ACTIONS[@json["action"]]
  end
end
