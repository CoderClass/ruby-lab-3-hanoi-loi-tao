require 'rails_helper'

RSpec.describe Product, type: :model do
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
  end

  describe ".discount_amount" do
    it "applies discount to the price" do
      a = Product.create! price_vnd: 150000
      expect(a.discount_amount).to eq 118500
    end
    # it "" do
    #
    # end
    # it "" do
    #

    # end
  end


end
