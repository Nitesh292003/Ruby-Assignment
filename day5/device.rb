class Device #Base class

  attr_accessor :name, :amount # used for getter and setter 

  def initialize(name, amount)  # constructor to initialize the object
    @name = name
    @amount = amount
  end

  def status
    puts "#{@name} is a generic device "
    puts "Price of #{@name} is #{@amount} "
    puts "-----------------------------------------------------"
  end
end
