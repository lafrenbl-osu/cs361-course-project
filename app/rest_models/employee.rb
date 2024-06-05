class Employee < RestModelBase
  def full_name
    "#{last_name}, #{first_name}"
  end

  def path
    "/employees/#{id}"
  end

  class << self
    def all_path
      '/employees.json'
    end

    def create_path
      '/employees.json'
    end

    def find_path(id)
      "/employees/#{id}.json"
    end

    def base_url
      ENV['EMPLOYEE_SERVICE_URL']
    end
  end
end
