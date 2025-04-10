# 2. WAP for students to print their school level according to grade
# e.g -
# if grade is between 1-5 return elementary
# if grade is between 6-8 return middle school
# if grade is between 9-12 return high school
# if grade is between otherwise return college

                                                #using case

puts "Tell the grade :"
grade = gets.chomp().to_i

case grade
when (1..5)
    puts "elementary school"
when (6..8)
    puts "middle school"
when (9..12)
    puts "high school"
else
    puts "college"
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
                                            #using If-else


def schoolLevel(grade)
    if grade>=1 && grade<=5
        puts "#{grade} is elementary school"
    elsif grade>=6 && grade<=8
        puts "#{grade} is middle school"
    elsif grade>=9 && grade<=12
        puts "#{grade} is high school"
    else
        puts "college"
    end
    end 

    puts "tell the grade :"
    grade = gets.chomp().to_i

    schoolLevel(grade)