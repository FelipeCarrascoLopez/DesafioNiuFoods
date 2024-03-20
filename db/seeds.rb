# Create two restaurant stores
store1 = Store.create(name: "Restaurant 1")
store2 = Store.create(name: "Restaurant 2")

# Create devices for Store 1
store1.devices.create(name: "Printer", status: :online)
store1.devices.create(name: "Web Server", status: :online)
store1.devices.create(name: "Database Server", status: :online)

# Create devices for Store 2
store2.devices.create(name: "Printer", status: :online)
store2.devices.create(name: "Web Server", status: :online)
store2.devices.create(name: "Database Server", status: :online)
