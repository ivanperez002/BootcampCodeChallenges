class Luhn
  attr_accessor :num
  def ininitialize (num)
    @num = num.digits
  end

  def double
    num.map.with_index do |x,i|
      i.even? ? x * 2 : x
    end
  end 

  def subt
    num.map do |x|
      x >= 10 ? x - 9 : x
    end
  end

  def add
    if num.sum.modulo(10) == 0
      return "Valid!"
    else
      return "Not Valid"
  end
end

num = Luhn.new(num) 

