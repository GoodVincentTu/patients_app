class Location < ApplicationRecord
	validates :name, :presence => true
	validates :code, :length => { :maximum => 10 }
	validates :name, :length => { :maximum => 80 }
end
