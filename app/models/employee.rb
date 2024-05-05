class Employee < ApplicationRecord
  def full_name
    [last_name, first_name].join(", ")
  end
end
