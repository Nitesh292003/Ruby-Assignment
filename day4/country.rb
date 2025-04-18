# Assignment - 
# 	A CLI application for handling data of as many countries as we can. Example of what data that we can have:
# Population
# GDP(Gross Domestic Production)
# States
# Army Strength
# State of country(developing, developed)
# Etc.
# On the basis of all these data we will be building modules to conceive various outputs like:
# Whether that country will get a loan from the IMF (International Monetary Fund) or WB (World bank).
# Whether the country can have a seat in the UN (United Nations) Security council.
# Whether the country can win the war or not


#-----------------------------------------------------------------------------------------------------------------------------------------------------------------



require_relative 'eligible_for_loan.rb'
require_relative 'check_un_seat.rb'
require_relative "check_war_victory.rb"
class Country
    include LoanEligibility
    include UNSecurityCouncil
    include WarVictory

    attr_accessor :name_of_country, :population, :gross_domestic_production, :states, :army_strength, :status_of_country
    @@countries =[]

    def initialize (name, population, gdp, states, army_strength, status)
        @name_of_country=name
        @population=population
        @gross_domestic_production=gdp
        @states=states
        @army_strength=army_strength
        @status_of_country=status
        @@countries<<self
    end

    def self.check_loan_eligibility
        puts "enter the country name"
        country_name=gets.chomp.downcase
        country = find_country(country_name)
        if country
            country.eligible_for_loan(country)
        else
            puts "country not found"
        end
    end


    def self.check_un_seat
        puts "enter the country name"
        country_name=gets.chomp.downcase
        country = find_country(country_name)
        if country
            country.eligible_for_un_security_council(country)
        else
            puts "country not found"
        end
    end

    def self.check_war_victory
        puts "enter the country name"
        country_name=gets.chomp.downcase
        country = find_country(country_name)
        if country
            country.can_win_war(country)
        else
            puts "country not found"
        end
    end




    def self.find_country(country_name)
        @@countries.find { |country| country.name_of_country.downcase == country_name.downcase }
    end
    
end

