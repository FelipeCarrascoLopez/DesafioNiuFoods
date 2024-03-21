# app/services/datos_service.rb
require 'net/http'

class DatosService
  def enviar_datos_al_servidor
    stores = Store.includes(:devices)

    json_result = stores.map do |store|
      {
        store_name: store.name,
        devices: store.devices.map do |device|
          {
            device_name: device.name,
            last_updated: Time.now.in_time_zone("Santiago"),
            device_status: device.status
          }
        end
      }
    end

    uri = URI('http://localhost:3005/')
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
    request.body = json_result.to_json

    response = http.request(request)

    if response.is_a?(Net::HTTPSuccess)
      'Datos enviados al servidor Node.js satisfactoriamente.'
    else
      'Hubo un error al enviar los datos al servidor Node.js.'
    end
  end
end
