class Post < ApplicationRecord
	has_one :approval, as: :approvable

	def self.requiring_approval
		joins(:approval)
	end

	def self.approved
		requiring_approval.merge Approval.approved
	end

	def self.pending
		requiring_approval.merge Approval.pending
	end
end
