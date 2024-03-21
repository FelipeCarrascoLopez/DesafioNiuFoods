require 'net/http'

class ThirtySecondsReportDataWorker
  include Sidekiq::Worker

  def perform
    datos_service = DatosService.new
    datos_service.enviar_datos_al_servidor
  end
end
