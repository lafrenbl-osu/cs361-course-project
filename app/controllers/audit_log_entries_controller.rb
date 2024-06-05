class AuditLogEntriesController < ApplicationController
  before_action :set_audit_log_entry, only: %i[ show ]

  # GET /audit_log_entries or /audit_log_entries.json
  def index
    @audit_log_entries = AuditLog.all
  end

  # GET /audit_log_entries/1 or /audit_log_entries/1.json
  def show
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_audit_log_entry
      @audit_log_entry = AuditLog.find(params[:id])
    end
end
