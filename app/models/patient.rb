class Patient < ApplicationRecord
  has_many :appointments
  belongs_to :city, optional: true
  has_many :doctors, through: :appointments
end
