module Approvable
  extend ActiveSupport::Concern

  included do
		has_one :approval, as: :approvable

    def self.requiring_approval
			joins(:approval)
		end

		def self.not_requiring_approval
			where.not(id: Approval.select(:approvable_id))
		end

		def self.approved
			requiring_approval.merge Approval.approved
		end

		def self.pending
			requiring_approval.merge Approval.pending
		end

		def approval_state
			try(:approval).try(:state) || :not_required
		end
  end
end