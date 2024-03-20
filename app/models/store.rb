class Store < ApplicationRecord
  has_many :devices
  validates :name, uniqueness: true

  def status
    devices_statuses = devices.pluck(:name, :status)
    {
      store_name: name,
      devices_statuses: devices_statuses
    }
  end
end
