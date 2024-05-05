require "test_helper"

class AuditLogEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audit_log_entry = audit_log_entries(:one)
  end

  test "should get index" do
    get audit_log_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_audit_log_entry_url
    assert_response :success
  end

  test "should create audit_log_entry" do
    assert_difference("AuditLogEntry.count") do
      post audit_log_entries_url, params: { audit_log_entry: { action: @audit_log_entry.action, after_state: @audit_log_entry.after_state, before_state: @audit_log_entry.before_state, employee_id: @audit_log_entry.employee_id, record_id: @audit_log_entry.record_id } }
    end

    assert_redirected_to audit_log_entry_url(AuditLogEntry.last)
  end

  test "should show audit_log_entry" do
    get audit_log_entry_url(@audit_log_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_audit_log_entry_url(@audit_log_entry)
    assert_response :success
  end

  test "should update audit_log_entry" do
    patch audit_log_entry_url(@audit_log_entry), params: { audit_log_entry: { action: @audit_log_entry.action, after_state: @audit_log_entry.after_state, before_state: @audit_log_entry.before_state, employee_id: @audit_log_entry.employee_id, record_id: @audit_log_entry.record_id } }
    assert_redirected_to audit_log_entry_url(@audit_log_entry)
  end

  test "should destroy audit_log_entry" do
    assert_difference("AuditLogEntry.count", -1) do
      delete audit_log_entry_url(@audit_log_entry)
    end

    assert_redirected_to audit_log_entries_url
  end
end
