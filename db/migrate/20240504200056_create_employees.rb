class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.date :hire_date
      t.string :title

      t.timestamps
    end
  end
end
