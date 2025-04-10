# 4. Regex for mobile number, email address, name, gender(M / F) and  amount

def validNumber(number)

if number.match?(/^\d{10}$/)

    puts "the number is valid"
else 
    puts "the number is not valid"
end
end 

def validEmail(email)
    if email.match?(/^\w\@[a-z]{4,}\.[a-z]{3,}$/)
        puts "valid email address"
    else 
        puts "Invalid address"
    end 
end
def validName(name)
    if name.match?(/^[a-zA-Z\s-]+$/)
        puts "valid name"
    else 
        puts "invalid name"
    end 
end
 def validGender(gender)
    if gender.match?(/^[MF]$/)
        puts "The gender is valid."
      else
        puts "The gender is not valid."
      end
    end

    def validAmount(amount)
      
        if amount.match?(  /^\d+(\.\d{1,2})?$/)
          puts "The amount is valid."
        else
          puts "The amount is not valid."
        end
      end
      


puts "choose the number"
puts "1->for Mobile number"
puts "2->for email"
puts "3-> for name"
puts "4-> for gender"
puts  "5->for amount"
 num = gets.chomp().to_i()

 case num
 when 1
    puts "enter the number"
    number = gets.chomp()
    validNumber(number)
 when 2
    puts "enter the email"
    email = gets.chomp()
    validEmail(email)
when 3
    puts "enter the name"
    name = gets.chomp()
    validName(name)

when 4
    puts "enter the gender (M/F):"
    gender = gets.chomp
    validGender(gender)
  when 5
    puts "enter the amount:"
    amount = gets.chomp
    validAmount(amount)
else 
    puts "invalid Input"
end

    
    