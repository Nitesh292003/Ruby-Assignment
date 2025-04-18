require_relative 'device.rb'

# Module representing WiFi capability

module WifiEnabled
  def connect_wifi
    puts "#{@name} is connected to wifi"
    puts "-----------------------------------------------------"
  end
end
