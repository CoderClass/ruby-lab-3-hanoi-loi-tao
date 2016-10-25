require 'rails_helper'

RSpec.describe Product, type: :model do
<<<<<<< HEAD
  pending "add some examples to (or delete) #{__FILE__}"

  describe ".alphabetical" do
    it "returns [] if there are no products" do
      expect(Product.alphabetical).to eq []
    end

    it "returns [a] if there is 1 products" do
      a = Product.create! name: "a"
      expect(Product.alphabetical).to eq [a]
    end

    it "returns [] if there is 2 products" do
      a = Product.create! name: "a"
      b = Product.create! name: "b"
      expect(Product.alphabetical).to eq [a,b]
    end

=======
  #pending "add some examples to (or delete) #{__FILE__}"
  describe ".alphabetical" do
    it "returns [] if there are no product" do
      expect(Product.alphabetical).to eq [] 
    end

    it "returns [a] if there are 1 product a" do
      a = Product.create name: "a"
      expect(Product.alphabetical).to eq [a] 
    end

    it "returns [a,b] if there are 2 product a, b and a before b" do
      a = Product.create name: "a"
      b = Product.create name: "b"
      expect(Product.alphabetical).to eq [a,b] 
    end
>>>>>>> 30404d1aa79cc10cd458dc0cab8b1ea571c4eecc
  end
end
