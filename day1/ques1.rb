# 1. wap to display number is prime or not

def primeOrNot(num)
    if num<=1
        puts  "#{num} is not prime number"
    elsif num ==2
        puts "#{num} is a prime number"
    else 
        (2...num).each do |i|
            if num%i==0
                puts "#{num} is not prime"
                return
            end
        end
        puts "#{num} is a prime"
    end
end

puts "Number is :"
num = gets.chomp()
primeOrNot(num.to_i)