# app/helpers/time_helper.rb
module TimeHelper
  def formatted_santiago_time(time)
    santiago_time = time.in_time_zone('Santiago')
    santiago_time.strftime('%H:%M:%S - %d/%m/%Y')
  end
end
