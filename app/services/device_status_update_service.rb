# app/services/device_status_update_service.rb
class DeviceStatusUpdateService
  def self.update_status_randomly
    devices = Device.all
    devices.each do |device|
      device.update(status: Device.statuses.keys.sample)
    end
  end
end
