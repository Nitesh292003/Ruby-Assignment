require_relative 'country'


while true
    puts "---Welcome to Country Data CLI---"
    puts "---Choose option from below---"
    puts "1-> Add a new country"
    puts "2->Check whether country get loan from the IMf or WB"
    puts "3->Check whether the country can have seat in the UN security council"
    puts "4->Check  whether country can win or not"
    puts "5->Exit"
    puts "Enter an option"

    option = gets.chomp.to_i

    case option

    when 1
        puts "enter the country name:"
        name=gets.chomp

        puts "enter the population of country"
        population=gets.chomp.to_i

        puts "enter the gdp of the country"
        gdp=gets.chomp.to_i

        puts "enter the number of states"
        states_count = gets.chomp.to_i
        states = []
        states_count.times do |i|
          puts "Enter state ##{i + 1}:"
          states << gets.chomp
        end

        puts "enter the army strength of country"
        army_strength=gets.chomp.to_i

        puts "Enter the development status (developed or developing):"
        status = gets.chomp.downcase

        country = Country.new(name, population, gdp, states, army_strength, status)

        puts "#{name} has been added successfully!"

    when 2
         Country.check_loan_eligibility

    when 3
        Country.check_un_seat

    when 4
        Country.check_war_victory

    when 5
        puts "exit"
        break

    else
        puts "your have choosed the wrong input"
    end


end

