# Design a Smart Home System where different devices (like Lights, Alexa, and Camera) inherit from a base Device class. 
# Some devices have unique capabilities (like a single light that changes colors).


require_relative 'light.rb'
require_relative 'wifi_enabled.rb'
require_relative 'camera.rb'
require_relative 'alexa.rb'
require_relative 'device.rb'

# creating instances 
light1 = Light.new("Ring Light", "5000")
light2 = Light.new("LED Light", "7000")

# calling status method
light1.status
light2.status

# creating instances 
alexa1 = Alexa.new("Alexa", "5000")
alexa2 = Alexa.new("Alexa Pro", "8000")

# calling status method
alexa1.status
alexa2.status

# creating instances 
camera1 = Camera.new("DSLR", "1,00,000")
camera2 = Camera.new("Samsung", "40,000")

# calling status method
camera1.status
camera2.status

#Use of Module Method 
camera1.connect_wifi

#Use of Module Method 
alexa2.connect_wifi

#Singleton method for a specific light 
puts "Enter the color : "
color = gets.chomp

def light2.change_color(color)
  puts "#{name} changed color to #{color}"
end

light2.change_color(color)

# Inheritance hierarchy 
puts "Light ancestors: #{Light.ancestors}"
puts "Alexa ancestors: #{Alexa.ancestors}"
puts "Camera ancestors: #{Camera.ancestors}"
puts "Device ancestors : #{Device.ancestors}"

# Singleton method hierarchy
puts "light2's singleton method ancestors: #{light2.singleton_class.ancestors}"



