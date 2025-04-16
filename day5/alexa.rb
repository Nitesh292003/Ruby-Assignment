require_relative 'device.rb'

class Alexa < Device # sub-class

  include WifiEnabled #including module 
  def status
    puts "#{@name} is a smart bluetooth connected device"
    puts "Price of #{@name} is #{@amount} "
    puts "-----------------------------------------------------"
  end
end

