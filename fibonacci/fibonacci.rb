## FIBONACCI RECURSIVE
def fib(num)
  if num == 0
    return 0
  elsif num == 1
    return 1
  else
    return fib(num-1) + fib(num-2)
  end
end

puts fib(35)


## FIBONACCI ITERTIVE

def fibonacci(num)
  i = 2
  fib = [0,1]
  if num == 0 
    return fib[0]

  elsif num == 1
    return fib
  else
    while i < num+1
      new_a = fib[(i-1)] + fib[(i-2)]
      fib << new_a
      i = 1 + i
    end
    return new_a
  end
end

puts fibonacci(35)

## Testing for Benchmark
require 'benchmark'

num = 35
Benchmark.bm do |x|
  x.report("fibonacci_itertive") { fibonacci(num) }
  x.report("fibonacci_recursive") { fib(num) }
end