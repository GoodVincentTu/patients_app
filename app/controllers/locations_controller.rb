class LocationsController < ApplicationController
  def show
  	set_location
  	@gender_select = Patient.genders.map { | k, v | [ v, k ] }
  	@patients = @location.patients
  	@patients.each do |e|
  		new_count = e.viewed_count += 1
  		e.update_column(:viewed_count, new_count)
  	end
  end

  private

  def set_location
  	@location = Location.find(params[:id])
  end
end
