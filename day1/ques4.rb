# 4. Regex for mobile number, email address, name, gender(M / F) and  amount

def valid_number(number)
    if number.match?(/^\d{10}$/)
        puts "the number is valid"
    else 
        puts "the number is not valid"
    end
end 

def valid_email(email)
    if email.match?(/^\w\@[a-z]{4,}\.[a-z]{3,}$/)
        puts "valid email address"
    else 
        puts "Invalid address"
    end 
end

def valid_name(name)
    if name.match?(/^[a-zA-Z\s-]+$/)
        puts "valid name"
    else 
        puts "invalid name"
    end 
end

def valid_gender(gender)
    if gender.match?(/^[MF]$/)
        puts "The gender is valid."
    else
        puts "The gender is not valid."
    end
end

def valid_amount(amount)
    if amount.match?(  /^\d+(\.\d{1,2})?$/)
        puts "The amount is valid."
    else
        puts "The amount is not valid."
    end
end


while true
    puts "choose the number"
    puts "1->for Mobile number"
    puts "2->for email"
    puts "3-> for name"
    puts "4-> for gender"
    puts "5->for amount"
    puts "6->exit"
    
    num = gets.chomp.to_i
    
    case num
    when 1
        puts "enter the number"
        number = gets.chomp
        valid_number(number)
    when 2
        puts "enter the email"
        email = gets.chomp
        valid_email(email)
    when 3
        puts "enter the name"
        name = gets.chomp
        valid_name(name)
    when 4
        puts "enter the gender (M/F):"
        gender = gets.chomp
        valid_gender(gender)
    when 5
        puts "enter the amount:"
        amount = gets.chomp
        valid_amount(amount)
    when 6
        puts "exit "
    break;
else 
    puts "invalid Input"
end
end

    
    