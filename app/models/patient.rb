class Patient < ApplicationRecord
  belongs_to :location

  validates :first_name, :last_name, :status, :presence => true
  validates :first_name, :length => { :maximum => 30}
  validates :middle_name, :length => { :maximum => 10}
  validates :last_name, :length => { :maximum => 30 }

  enum genders: [ :not_available, :male, :female ]

  acts_as_paranoid

  scope :on_treatment, -> { where( :status => "treatment" )}
end
