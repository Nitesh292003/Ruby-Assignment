require_relative 'device.rb'

class Light < Device # Inheritance where child class(sub class) that is light is inherited from the parent class(super class) which is the Device class.

  def status
    super #Keyword used to call the method of parent class first
    puts "#{@name} is a smart light"
    puts "Price of #{@name} is #{@amount} "
    puts "-----------------------------------------------------"
  end
end
