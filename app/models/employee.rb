class Employee < ApplicationRecord
  include Auditable

  def full_name
    [last_name, first_name].join(", ")
  end
end
