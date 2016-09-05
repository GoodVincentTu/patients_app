class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_location

  private

  def set_location
  	session["location"][0] = "Test location 1"
  	session["location"][1] = "Test location 2"
  end
end
