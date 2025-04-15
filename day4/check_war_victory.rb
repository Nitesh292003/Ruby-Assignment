module WarVictory
    def can_win_war(country)
        if country.army_strength > 500000 && country.gross_domestic_production > 10000
            puts "country can win the war"
        else
            puts "Cannot win the war"
        end
    end
end