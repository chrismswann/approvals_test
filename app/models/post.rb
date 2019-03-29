class Post < ApplicationRecord
	has_many :approvals, as: :approvable
end
