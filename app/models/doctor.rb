class Doctor < ApplicationRecord
  has_many :appointments
  has_many :specialtyofdoctors
  belongs_to :city, optional: true
  has_many :patients, through: :appointments
  has_many :specialties, through: :specialtyofdoctors

end
