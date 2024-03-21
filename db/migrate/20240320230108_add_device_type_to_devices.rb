class AddDeviceTypeToDevices < ActiveRecord::Migration[7.1]
  def change
    add_column :devices, :device_type, :integer
  end
end
