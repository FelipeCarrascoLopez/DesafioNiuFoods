# app/workers/device_status_update_worker.rb
class DeviceStatusUpdateWorker
  include Sidekiq::Worker

  def perform
    DeviceStatusUpdateService.update_status_randomly
  end
end
