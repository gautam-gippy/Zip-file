class AppointmentController < ApplicationController
	before_filter :authenticate_patient!
	
	def new
		@all_records = Doctor.all
		#@all_doctors = Doctor.uniq.pluck(:name)
		@appoint = Appointment.new
	end

	def create
				
		usr_email = current_patient.email
		usr_id = Patient.where(:email => usr_email).pluck(:id).to_sentence
		@appoint = Appointment.new(patient_id: usr_id, desc: params[:appoint][:desc], doctor_id: params[:appoint][:doctor_id])
		if @appoint.save
			puts "Appointment request made"
		end
		redirect_to new_appointment_path
	end
end
