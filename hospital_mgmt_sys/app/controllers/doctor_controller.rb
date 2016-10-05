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

	def destroy

		@doctor = Doctor.find(params[:id])
  	if @doctor
  	  @doctor.destroy
  	  redirect_to index_doctor_path
	end
end

	def edit
		@doctor = Doctor.find(params[:id])
	end

	def update
		@doctor = Doctor.find(params[:id])
  	if @doctor.update(params[:doctor].permit(:name, :email, :phone_no, :experience, :education, :speciality))
  	  redirect_to index_doctor_path
	end
end

	def index
		@doctors = Doctor.all
	end
end
