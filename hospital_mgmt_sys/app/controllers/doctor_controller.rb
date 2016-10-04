class DoctorController < ApplicationController
	before_filter :authenticate_patient!

	def new
		@doctor = Doctor.new
	end
	
	def create
		@doctor = Doctor.new(name: params[:doctor][:name], email: params[:doctor][:email], phone_no: params[:doctor][:phone_no], speciality: params[:doctor][:speciality], education: params[:doctor][:education], experience: params[:doctor][:experience] )
		if @doctor.save
			puts "saved successfully"
		end
		redirect_to new_doctor_path
	end
end
