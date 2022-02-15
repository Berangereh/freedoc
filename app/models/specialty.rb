class Specialty < ApplicationRecord
  has_many :specialtyofdoctors
  has_many :doctors, through: :specialtyofdoctors
end
