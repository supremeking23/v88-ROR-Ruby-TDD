require_relative 'person'
RSpec.describe Person do
  it "can't initialize user without name" do 
    expect{Person.new}.to raise_error(ArgumentError)
  end
  
  it "can't change users name" do
    user = Person.new "Oscar"
    expect{user.name = "Eduardo"}.to raise_error(NoMethodError)
  end  
end

#It's important to note, that when testing for errors we will be using expect{} instead of expect(). 


#If we don't establish a setter method for an attribute and someone tries to change the value of said attribute then the expected output should be a NoMethodError. Another error we want to test for often is the ArgumentError. This error will come up if we pass the wrong number of arguments into a method call.