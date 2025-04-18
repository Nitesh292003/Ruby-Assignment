module LoanEligibility
    def eligible_for_loan(country)
        if country.gross_domestic_production >= 5000 && country.population >= 100000
            puts "country will get loan for IMF"
        elsif country.gross_domestic_production >= 50000 && country.population >= 1000000
            puts "country will get loan from World Bank"
        else
            puts "country will not get loann from both IMF or World Bank"
        end
    end
end
