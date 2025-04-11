# 5. Write a program to find IP address class

def find_ip_class(ip)
    octets = ip.split(".")
  
    if octets.length != 4
      puts "Invalid IP address"
      return
    end
  
    octets.each do |octet|
        if !octet.match(/^\d+$/) || octet.to_i < 0 || octet.to_i > 255
            puts "Invalid IP address"
            return
        end
    end
  
    first_octet = octets[0].to_i
  
    case first_octet
    when (0..127)
      puts "Class A"
    when (128..191)
      puts "Class B"
    when (192..223)
      puts "Class C"
    when 224..239
      puts "Class D (Multicast)"
    when 240..255
      puts "Class E (Reserved)"
    else
      puts "Invalid IP address"
    end
end

puts "Enter the IP address:"
ip = gets.chomp
ind_ip_class(ip)
  

