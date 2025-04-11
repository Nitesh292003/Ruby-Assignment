# 1. wap to display number is prime or not

def is_prime_number(num)
    if num<=1
        puts  "#{num} is not prime number"
    elsif num ==2
        puts "#{num} is a prime number"
    else 
        (2..Math.sqrt(num)).each do |i|
            if num%i==0
                puts "#{num} is not prime number"
                return
            end
        end
        puts "#{num} is a prime number"
    end
end

puts "enter the number :"
num = gets.chomp
is_prime_number(num.to_i)