require 'date' #library for Date class

# puts Time.now.year    -- this also shows the year with no need to a library
current = Date.today.year

for i in 1..20 do
    print "#{current+4*i}"
    if i != 20 then
        print ", "
    elsif i == 20 then
        print "\n"
    end
end