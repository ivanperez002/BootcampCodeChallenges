module Luhn
  def self.is_valid?(num)
    
    num = num.digits

    num.map.with_index do |x,i|
      i.odd? ? x * 2 : x
    end

    num.map do |x|
      x >= 10 ? x - 9 : x
    end

    if num.sum.modulo(10) == 0
      puts true
    else
      puts false
    end
  end

end

Luhn.is_valid?(377681478627336)

