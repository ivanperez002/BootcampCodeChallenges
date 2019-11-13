def fib(num)
  if num == 0
    return 0
  elsif num == 1
    return 1
  else
    return fib(num-1) + fib(num-2)
  end
end

puts fib(9)