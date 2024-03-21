# app/controllers/datos_controller.rb
class DatosController < ApplicationController
  def enviar_datos_al_servidor
    service = DatosService.new
    message = service.enviar_datos_al_servidor

    if message.include?('satisfactoriamente')
      flash[:success] = message
    else
      flash[:error] = message
    end

    redirect_to root_path
  end
end
