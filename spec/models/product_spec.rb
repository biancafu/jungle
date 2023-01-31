require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before do 
      @category = Category.new(id:1, name: "Kitchen")
      @product = Product.new(name:"Spoon", price_cents: 599, quantity: 80, category: @category)
    end

    it "validates @product is valid" do
      expect(@product).to be_valid
    end
    it "validates name has correct value" do 
      expect(@product.name).to eql("Spoon")
    end

    it "validates having nil as name is not valid" do 
      @product.name = nil
      @product.valid? 
      expect(@product.errors.full_messages).to_not be_empty
    end

    it "validates having nil as price is not valid" do 
      @product.price_cents = nil
      @product.valid? 
      expect(@product.errors.full_messages).to_not be_empty
    end

    it "validates having nil as quantity is not valid" do 
      @product.quantity = nil
      @product.valid? 
      expect(@product.errors.full_messages).to_not be_empty
    end

    it "validates having nil as category is not valid" do 
      @product.category = nil
      @product.valid? 
      expect(@product.errors.full_messages).to_not be_empty
    end
  end
end
