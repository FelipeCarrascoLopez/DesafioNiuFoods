class Store < ApplicationRecord
  has_many :devices
  validates :name, uniqueness: true
end
