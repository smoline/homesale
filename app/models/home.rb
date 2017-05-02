class Home < ApplicationRecord
  include ImageUploader[:image]

  belongs_to :created_by, class_name: "User"
  has_many :favorites, dependent: :destroy

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

  def self.search(search)
    where("address LIKE ? or city LIKE ? or state LIKE ? or zip LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  def can_this_user_edit?(user)
    created_by == user
  end

  def can_this_user_destroy?(user)
    created_by == user
  end

  def square_footage_meters
    square_footage.to_i * 0.0929
  end
end
