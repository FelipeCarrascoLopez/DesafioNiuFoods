class Device < ApplicationRecord
  belongs_to :store

  enum device_type: { printer: 0, web_server: 1, database_server: 2 }
  enum status: [:online, :offline, :maintenance]

  def self.update_status_randomly
    devices = Device.all
    devices.each do |device|
      device.update(status: Device.statuses.keys.sample)
    end
  end
end
