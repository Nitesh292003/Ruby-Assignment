require_relative 'device.rb'

class Camera < Device # sub-class

  include WifiEnabled #including module 
  def status
    puts "#{@name} is a security camera"
    puts "Price of #{@name} is #{@amount} "
    puts "-----------------------------------------------------"
  end
end

