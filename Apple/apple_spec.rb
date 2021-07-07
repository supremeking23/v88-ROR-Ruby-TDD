require_relative 'apple'
RSpec.describe Apple do
    before(:each) do
        @apple_tree = Apple.new 3, 200
    end
  
    it 'Apple Tree should have an age attribute with getter and setter methods.' do
        @apple_tree.age = 30
        expect(@apple_tree.age).to eq(30)
    end


    it ' Apple Tree should have a height attribute with only a getter method. You should raise a NoMethodError if anyone tries to set the height attribute directly.' do

        apple = Apple.new 3, 200
        # @apple_tree.height = 1000
        # expect(@apple_tree.height).to eq(1000)
        expect{apple.height=1000}.to raise_error(NoMethodError)
        

    end

    it 'Apple Tree should have an apple count attribute with only a getter method. You should raise a NoMethodError if anyone tries to set the apple count attribute directly.' do
        apple = Apple.new 3, 200
        expect{apple.count=1}.to raise_error(NoMethodError)
        
    end


    context 'Apple Tree should have a method called year_gone_by. This method should:' do
        apple = Apple.new 3, 200
        apple.age = 3
        apple.year_gone_by
        it 'Add one year to the age attribute' do
            
            expect(apple.age).to eq(4)
        end
        it 'Increase the height by 10% of its current height' do
            expect(apple.height).to eq(220.0)
        end

        it 'Raise its apple count by two.' do
            expect(apple.count).to eq(5)
        end
        
    end

    it 'Apple Tree should not grow apples for the first three years of its life' do

        apple = Apple.new 3, 200
        apple.age = 1
        expect(apple.check_apple_three_age).to eq(true)
        
    end

    it 'Apple Tree should have a method called pick_apples that takes all of the apples off the tree' do
        apple = Apple.new 3, 200
        
        expect(apple.pick_apples).to eq(0)
    end

    it 'Apple Tree should not grow apples if it\'s older than ten.' do

        apple = Apple.new 3, 200
        apple.age = 10
        expect(apple.check_apple_three_age).to eq(true)
        
    end



   
end