class AuditLogsController < ApplicationController
	def index
		@audit_logs = AuditLog.page(params[:page]).per(8)
		authorize @audit_logs
	end
end
