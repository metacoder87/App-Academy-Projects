class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        @name
    end

    def name=(string)
        @name = string
    end

    def breed
        @breed
    end

    def breed=(string)
        @breed = string
    end

    def age
        @age
    end

    def age=(number)
        @age = number
    end

    def bark
        if @age > 3 
            @bark.upcase
        elsif @age <= 3 
            @bark.downcase
        end
    end

    def bark=(string)
        @bark = string
    end

    def favorite_foods
        @favorite_foods
    end

    def favorite_foods=(string)
        @favorite_foods = string
    end
    
    def favorite_food?(string)
        str = string.capitalize
        @favorite_foods.include?(str)
    end

end

Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])
