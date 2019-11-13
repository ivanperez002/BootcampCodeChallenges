require 'benchmark'

num = 35
Benchmark.bm do |x|
  x.report("fibonacci_itertive") { fibonacci(num) }
  x.report("fibonacci_recursive") { fib(num) }
end