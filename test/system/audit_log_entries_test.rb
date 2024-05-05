require "application_system_test_case"

class AuditLogEntriesTest < ApplicationSystemTestCase
  setup do
    @audit_log_entry = audit_log_entries(:one)
  end

  test "visiting the index" do
    visit audit_log_entries_url
    assert_selector "h1", text: "Audit log entries"
  end

  test "should create audit log entry" do
    visit audit_log_entries_url
    click_on "New audit log entry"

    fill_in "Action", with: @audit_log_entry.action
    fill_in "After state", with: @audit_log_entry.after_state
    fill_in "Before state", with: @audit_log_entry.before_state
    fill_in "Employee", with: @audit_log_entry.employee_id
    fill_in "Record", with: @audit_log_entry.record_id
    click_on "Create Audit log entry"

    assert_text "Audit log entry was successfully created"
    click_on "Back"
  end

  test "should update Audit log entry" do
    visit audit_log_entry_url(@audit_log_entry)
    click_on "Edit this audit log entry", match: :first

    fill_in "Action", with: @audit_log_entry.action
    fill_in "After state", with: @audit_log_entry.after_state
    fill_in "Before state", with: @audit_log_entry.before_state
    fill_in "Employee", with: @audit_log_entry.employee_id
    fill_in "Record", with: @audit_log_entry.record_id
    click_on "Update Audit log entry"

    assert_text "Audit log entry was successfully updated"
    click_on "Back"
  end

  test "should destroy Audit log entry" do
    visit audit_log_entry_url(@audit_log_entry)
    click_on "Destroy this audit log entry", match: :first

    assert_text "Audit log entry was successfully destroyed"
  end
end
