# db/seeds.rb

# Create two restaurant stores
Store.create(name: "Restaurant 1")
Store.create(name: "Restaurant 2")


# Create devices for Store 1
Store.find(Store.where(name: "Restaurant 1").take.id).devices.create(name: "Printer", type: "Printer")
Store.find(Store.where(name: "Restaurant 1").take.id).devices.create(name: "Web Server", type: "Web Server")
Store.find(Store.where(name: "Restaurant 1").take.id).devices.create(name: "Database Server", type: "Database Server")

# Create devices for Store 2
Store.find(Store.where(name: "Restaurant 2").take.id).devices.create(name: "Printer", type: "Printer")
Store.find(Store.where(name: "Restaurant 2").take.id).devices.create(name: "Web Server", type: "Web Server")
Store.find(Store.where(name: "Restaurant 2").take.id).devices.create(name: "Database Server", type: "Database Server")
