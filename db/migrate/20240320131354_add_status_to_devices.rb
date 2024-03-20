class AddStatusToDevices < ActiveRecord::Migration[7.1]
  def change
    add_column :devices, :status, :integer
  end
end
