class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients, :through => :appointments
	has_many :expertizes
	has_many :specializations, :through => :expertizes
end
