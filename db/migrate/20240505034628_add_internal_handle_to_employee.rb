class AddInternalHandleToEmployee < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :internal_handle, :string
  end
end
