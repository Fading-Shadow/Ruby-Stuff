require './tokenize' # requires the file tokenize.rb from the same directory

def toMorse(string)
    result = ''
    list = tokenize(string.upcase,'.-')
    for i in 0 .. list.length-1 do
        word = list[i]
        for j in 0 .. word.length do
            case word[j]
            when 'A' then result << '.- '
            when 'B' then result << '-... '
            when 'C' then result << '-.-. '
            when 'D' then result << '-.. '
            when 'E' then result << '. '
            when 'F' then result << '..-. '
            when 'G' then result << '--. '
            when 'H' then result << '.... '
            when 'I' then result << '.. '
            when 'J' then result << '.--- '
            when 'K' then result << '-.- '
            when 'L' then result << '.-.. '
            when 'M' then result << '-- '
            when 'N' then result << '-. '
            when 'O' then result << '--- '
            when 'P' then result << '.--. '
            when 'Q' then result << '--.- '
            when 'R' then result << '.-. '
            when 'S' then result << '... '
            when 'T' then result << '- '
            when 'U' then result << '..- '
            when 'V' then result << '...- '
            when 'W' then result << '.-- '
            when 'X' then result << '-..- '
            when 'Y' then result << '-.-- '
            when 'Z' then result << '--.. '
            when '1' then result << '.---- '
            when '2' then result << '..--- '
            when '3' then result << '...-- '
            when '4' then result << '....- '
            when '5' then result << '..... '
            when '6' then result << '-.... '
            when '7' then result << '--... '
            when '8' then result << '---.. '
            when '9' then result << '----. '
            when '0' then result << '------ '
            end
        end
        result << ' / '
    end
    return result
end

def toEnglish(string)
    result = ''
    list = tokenize(string,' ')
    for i in 0 .. list.length-1 do
        word = list[i]
            case word
            when '.-' then result << 'A'
            when '-...' then result << 'B'
            when '-.-.' then result << 'C'
            when '-..' then result << 'D'
            when '.' then result << 'E'
            when '..-.' then result << 'F'
            when '--.' then result << 'G'
            when '....' then result << 'H'
            when '..' then result << 'I'
            when '.---' then result << 'J'
            when '-.-' then result << 'K'
            when '.-..' then result << 'L'
            when '--' then result << 'M'
            when '-.' then result << 'N'
            when '---' then result << 'O'
            when '.--.' then result << 'P'
            when '--.-' then result << 'Q'
            when '.-.' then result << 'R'
            when '...' then result << 'S'
            when '-' then result << 'T'
            when '..-' then result << 'U'
            when '...-' then result << 'V'
            when '.--' then result << 'W'
            when '-..-' then result << 'X'
            when '-.--' then result << 'Y'
            when '--..' then result << 'Z'
            when '.----' then result << '1'
            when '..---' then result << '2'
            when '...--' then result << '3'
            when '....-' then result << '4'
            when '..... ' then result << '5'
            when '-....' then result << '6'
            when '--...' then result << '7'
            when '---..' then result << '8'
            when '----.' then result << '9'
            when '------' then result << '0'
            when '/' then result << ' '
            end
    end
    list = result.split(" ")
    result = ''
    for i in 0..list.length-1 do
        result << list[i] << ' '
    end
    return result
end

puts "Give a string: "
str = gets.chop
puts "Initial string: #{str}"
puts "To Morse: #{str = toMorse(str)}"
puts "To English: #{toEnglish(str)}"