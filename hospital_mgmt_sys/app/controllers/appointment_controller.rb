class AppointmentController < ApplicationController
	def new
		@all_records = Doctor.all
		
		usr_email = current_patient.email
		#usr_name = Patient.where(:email => usr_email).pluck(:name)
		#Appointment.new(name: usr_name, desc: params[:appoints][:desc])
	end
end
