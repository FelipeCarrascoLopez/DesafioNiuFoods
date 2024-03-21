class HomeController < ApplicationController


  def index
    @stores = Store.all
    @devices = Device.includes(:store)
  end


end
