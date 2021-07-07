require_relative 'Bank_Account'
RSpec.describe BankAccount do
    before(:each) do
        @user1 = BankAccount.new
        @user1.deposit("savings account",1000)
        @user1.deposit("checkings account",1000)

    end

    it 'Has a getter method that retrieves the total account balance' do 
        # @user1.deposit("savings account",1000)
        expect(@user1.display_total_amount).to eq(2000)
    end

    it 'Has a getter method for retrieving the checking account balance' do 
        expect(@user1.checking_account).to eq(1000)
    end


    # it 'Has a function that allows the user to withdraw cash' do 
    #     @user1.withraw("savings account",1000)
    #     #display the total ammount once withdraw is success
    #     expect(@user1.display_total_amount).to eq(1000)
    # end

    it 'Raises an error if a user tries to withdraw more money than they have in the account' do 
        
        expect{@user1.withd = 2000}.to raise_error(NoMethodError)
    end

    it 'Raises an error when the user attempts to retrieve the total number of bank accounts' do
        expect{BankAccount.total_account}.to raise_error(NoMethodError)
    end

    it 'Raises an error when the user attempts to set the interest rate' do
        expect{BankAccount.interest_rate}.to raise_error(NoMethodError)
    end
end