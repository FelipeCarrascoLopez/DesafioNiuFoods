# Create two restaurant stores
store1 = Store.create(name: "Restaurant 1")
store2 = Store.create(name: "Restaurant 2")

# Create devices for Store 1
store1.devices.create(name: "Printer 1 - #{store1.name}", device_type: :printer, status: :ok, last_status_update: Time.now)
store1.devices.create(name: "Web Server 1 - #{store1.name}", device_type: :web_server, status: :ok, last_status_update: Time.now)
store1.devices.create(name: "Database Server 1 - #{store1.name}", device_type: :database_server, status: :ok, last_status_update: Time.now)

# Create devices for Store 2
store2.devices.create(name: "Printer 1 - #{store2.name}", device_type: :printer, status: :error, last_status_update: Time.now)
store2.devices.create(name: "Web Server 1 - #{store2.name}", device_type: :web_server, status: :error, last_status_update: Time.now)
store2.devices.create(name: "Database Server 1 - #{store2.name}", device_type: :database_server, status: :error, last_status_update: Time.now)
