class Apple 

    # attr_accessor  :height
    # attr_reader :height

    def initialize count, height
        @count = count
        @height = height
    end
    #setter
    def age=(age)
        @age = age
    end

    def age
        @age
    end

    def year_gone_by
        @age = @age + 1
        increase_height = @height * 0.10
        @height = @height + increase_height
        @count =   @count + 2
    end

    # def height=(height)
    #     @height = height
    # end

    def height
        @height
    end

    def count
        @count
    end

    def check_apple_three_age
        # if @age < 4 && @age > 10
        if @age < 11
            return true
        else
            return false
        end

    end

    def pick_apples 
        @count = 0
    end
    # def count=(count)
    #     @count = count
    # end
   
end


# apple = Apple.new 1, 1
# apple.age = 2
# puts apple.age
# apple.year_gone_by
# puts apple.age
# apple.height = 1000
# puts apple.height