class PatientController < ApplicationController
	
	def index
	end

	def req_appointment
		@specialities = Doctor.all
	end
end
