# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

City.create!(name: "Berlin")
City.create!(name: "Londes")
City.create!(name: "Paris")
City.create!(name: "Pékin")

Specialty.create!(name: "généraliste")
Specialty.create!(name: "dentiste")
Specialty.create!(name: "podologue")
Specialty.create!(name: "psychologue")

20.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: City.find(rand(1..4)))
end

20.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.find(rand(1..4)))
end

20.times do
  appointment = Appointment.create!(date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), city: City.find(rand(1..4)), patient: Patient.find(rand(1..20)), doctor: Doctor.find(rand(1..20)))
end

20.times do
  specialtyofdoctor = Specialtyofdoctor.create!(doctor: Doctor.find(rand(1..20)), specialty: Specialty.find(rand(1..4)))
end