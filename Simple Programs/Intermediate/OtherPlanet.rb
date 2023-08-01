# Write a program that takes the duration of a year (in fractional days) for an imaginary planet as an input 
# and produces a leap-year rule that minimizes the difference to the planet’s solar year.

# 365.25 days in a Earth Year

# take the amount of days in a imaginary planet
puts "Give the amount of days in a year of this imaginary planet: "
days = gets.chop.to_f # convert the string to float

fraction = days.to_s.split(".")
margin = "0."+fraction[1].to_s
margin = 1/ margin.to_f
margin = "%.3f" %margin # to reduce the float number to only 3 decimals and round it up so in the case
                        # of using 1.455 the result becomes 2.198 compared to : 2.1978021978021975
puts "The amount of years it takes to produce a leap year is: #{margin}"