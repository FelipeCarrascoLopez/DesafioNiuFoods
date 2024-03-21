require 'net/http'

class FortySecondsReportDataWorker
  include Sidekiq::Worker

  def perform
    datos_service = DatosService.new
    datos_service.enviar_datos_al_servidor
  end
end
