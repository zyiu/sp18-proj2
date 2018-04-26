class Listing < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
  belongs_to :user
  has_many :comments
end
