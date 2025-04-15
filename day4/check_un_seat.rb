module UNSecurityCouncil
    def eligible_for_un_security_council(country)
        if country.status_of_country == "developed" && country.army_strength > 1000000
            puts "country will get seat in UN Security Council"
        else
            puts "country will not get seat in UN Security Council"
        end
    end
end