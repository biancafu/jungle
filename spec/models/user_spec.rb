require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    before do 
      @user = User.create(name: "Bianca Fu", email: "bb@gmail.com", password: "password", password_confirmation: "password")
    end    

    it "validates @user is valid (all the fields are inputted)" do
      expect(@user).to be_valid
    end

    it "check if name is valid" do
      @user.name = nil
      @user.valid? 
      expect(@user.errors.full_messages).to_not be_empty
    end

    it "check if email is valid" do
      @user.email = nil
      @user.valid? 
      expect(@user.errors.full_messages).to_not be_empty
    end

    it "check if email is unqiue" do
      @user2 = User.create(name: "bb321", email: "BB@gmail.com", password: "password", password_confirmation: "password") 
      @user2.valid? 
      expect(@user2.errors.full_messages).to_not be_empty
    end

    it "check if input password is valid" do
      @user.password = nil
      @user.password_confirmation = nil
      @user.valid? 
      expect(@user.errors.full_messages).to_not be_empty
    end

    it "check if password matches password_confirmation" do
      @user.password_confirmation = "password2"
      @user.valid? 
      expect(@user.errors.full_messages).to_not be_empty
    end

    it "check if password has at least 8 characters" do
      @user.password = "less"
      @user.password_confirmation = "less"
      @user.valid? 
      expect(@user.errors.full_messages).to_not be_empty
    end

  end


  # describe '.authenticate_with_credentials' do

  #   before do 
  #     @user = User.create(first_name: "Minnie", last_name: "Mouse", email: "m.mouse@disney.com", password: "mickey", password_confirmation: "mickey")
  #   end  
    
  #   it "should login if valid email and valid password is correct" do
  #     email = 'm.mouse@disney.com'
  #     password = 'mickey'

  #     @user2 = User.authenticate_with_credentials(email, password)

  #     expect(@user2).to eq(@user)
  #   end

  #   it "should not logging if email is incorrect" do
  #     email = 'mm.mouse@disney.com'
  #     password = 'mickey'

  #     @user2 = User.authenticate_with_credentials(email, password)

  #     expect(@user2).to_not eq(@user)
  #   end

  #   it "should not logging if password is incorrect" do
  #     email = 'm.mouse@disney.com'
  #     password = 'mickeyy'

  #     @user2 = User.authenticate_with_credentials(email, password)

  #     expect(@user2).to_not eq(@user)
  #   end

  #   it "should login if there email has spaces" do
  #     email = ' m.mouse@disney.com  '
  #     password = 'mickey'

  #     @user2 = User.authenticate_with_credentials(email, password)

  #     expect(@user2).to eq(@user)
  #   end

  #   it "should login if email is typed in different cases" do
  #     email = 'M.mouse@DisNey.cOm'
  #     password = 'mickey'

  #     @user2 = User.authenticate_with_credentials(email, password)

  #     expect(@user2).to eq(@user)
  #   end

  # end
end
