class Greeter
    def initialize(name= "World")
        @name = name
    end
    def say_hi
        puts "Hello, #{@name}!"
    end
    def say_bye
        puts "Bye, #{@name}! Come back again soon!"
    end
    def say_N
        puts "#{@name} you are a NIGGER!"
    end
end

person = Greeter.new("Azet")
person.say_hi
person.say_N
person.say_bye