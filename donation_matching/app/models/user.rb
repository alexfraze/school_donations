class User < ApplicationRecord

	validates :first,  presence: true
	validates :last, presence: true
	validates :email, presence: true
	validates :role, presence: true
	validates :role, inclusion: { in: %w(Parent Teacher School)}
		# , message: "%{role} is not a valid role"}
	validates :username, presence: true
	validates :password_digest, presence: true

	has_many :belongs_to
	has_many :donations
	has_one :student, through: :belongs_to
end
