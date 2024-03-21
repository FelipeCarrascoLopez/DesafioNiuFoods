class AddLastStatusUpdateToDevice < ActiveRecord::Migration[7.1]
  def change
    add_column :devices, :last_status_update, :datetime
  end
end
