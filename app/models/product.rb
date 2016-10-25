class Product < ActiveRecord::Base
  def self.alphabetical
    order("name")
  end

  def discount_amount
    if price_vnd > 100000
      price_vnd = self.price_vnd * 0.79
    elsif price_vnd > 200000
      price_vnd = self.price_vnd * 0.69
    else price_vnd > 800000
      price_vnd = self.price_vnd * 0.59
    end
  end

end
