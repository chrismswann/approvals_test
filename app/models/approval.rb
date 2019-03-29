class Approval < ApplicationRecord
	belongs_to :approvable, polymorphic: true

	enum state: { pending: "pending", approved: "approved" }
end
