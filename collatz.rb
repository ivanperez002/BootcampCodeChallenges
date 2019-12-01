def collatz(num)

  seq = [num]
  
  while num != 1
    if num.odd?
      num = 3*num + 1
    else
      num = num/2
    end

    seq << num
  end

  seq_count = seq.length

  return seq_count
end

def find_largest_collatz(array)

  array.each.with_index(1) do |value, index|
    count = collatz(value)

    result << {
      index: index,
      value: count
    }
  end

  puts result.value.max(1).index

end

array = Array[1..1000000]

puts find_largest_collatz(array)



