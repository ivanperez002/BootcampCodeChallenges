def fibonacci(n)
  i = 2
  fib = [0,1]
  if n == 0 
    return fib[0]

  elsif n == 1
    return fib
  else
    while i < n+1
      new_a = fib[(i-1)] + fib[(i-2)]
      fib << new_a
      i = 1 + i
    end
    return new_a
  end
end

puts fibonacci(9)