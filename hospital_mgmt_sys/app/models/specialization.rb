class Specialization < ApplicationRecord
	has_many :expertizes
	has_many :doctors, :through => :expertizes
end
