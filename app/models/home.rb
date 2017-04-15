class Home < ApplicationRecord
  include ImageUploader[:image]

  validates :address, presence: true
  validates :city, presence: true
  validates :state, length: { is: 2 }
  validates :zip, length: { is: 5 }
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :square_footage, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :parking, inclusion: { in: %w(None Street\ Parking Attached\ Garage Detached\ Garage), message: "must contain one of these: None, Street Parking, Attached Garage, or Detached Garage" }
  validates :hoa, inclusion: { in: [true, false] }
end
