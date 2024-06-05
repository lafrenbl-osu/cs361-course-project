class Artist < ApplicationRecord
  validates :first_name, :last_name, presence: true

  default_scope { order(last_name: :asc) }

  def full_name
    [last_name, first_name].join(", ")
  end
end
