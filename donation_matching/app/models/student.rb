class Student < ApplicationRecord

	has_many :belongs_to
	has_one :user, through: :belongs_to

end
