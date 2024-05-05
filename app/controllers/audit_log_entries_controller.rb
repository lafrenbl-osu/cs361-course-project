class AuditLogEntriesController < ApplicationController
  before_action :set_audit_log_entry, only: %i[ show edit update destroy ]

  # GET /audit_log_entries or /audit_log_entries.json
  def index
    @audit_log_entries = AuditLogEntry.all
  end

  # GET /audit_log_entries/1 or /audit_log_entries/1.json
  def show
  end

  # GET /audit_log_entries/new
  def new
    @audit_log_entry = AuditLogEntry.new
  end

  # GET /audit_log_entries/1/edit
  def edit
  end

  # POST /audit_log_entries or /audit_log_entries.json
  def create
    @audit_log_entry = AuditLogEntry.new(audit_log_entry_params)

    respond_to do |format|
      if @audit_log_entry.save
        format.html { redirect_to audit_log_entry_url(@audit_log_entry), notice: "Audit log entry was successfully created." }
        format.json { render :show, status: :created, location: @audit_log_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @audit_log_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audit_log_entries/1 or /audit_log_entries/1.json
  def update
    respond_to do |format|
      if @audit_log_entry.update(audit_log_entry_params)
        format.html { redirect_to audit_log_entry_url(@audit_log_entry), notice: "Audit log entry was successfully updated." }
        format.json { render :show, status: :ok, location: @audit_log_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @audit_log_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audit_log_entries/1 or /audit_log_entries/1.json
  def destroy
    @audit_log_entry.destroy!

    respond_to do |format|
      format.html { redirect_to audit_log_entries_url, notice: "Audit log entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audit_log_entry
      @audit_log_entry = AuditLogEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def audit_log_entry_params
      params.require(:audit_log_entry).permit(:action, :employee_id, :record_id, :before_state, :after_state)
    end
end
