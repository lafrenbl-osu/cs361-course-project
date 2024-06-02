class CreateAuditLogEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :audit_log_entries do |t|
      t.integer :action
      t.references :employee, null: false, foreign_key: true
      t.references :record, null: false, polymorphic: true
      t.text :before_state
      t.text :after_state

      t.timestamps
    end
  end
end
