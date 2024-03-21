class Device < ApplicationRecord
  belongs_to :store

  enum device_type: { printer: 0, web_server: 1, database_server: 2 }
  enum status: [:ok, :warning, :error]

end
