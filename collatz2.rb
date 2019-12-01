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
  return seq
end

def find_largest_collatz(num)

  counter = 1
  current_longest_seq = []
  until counter == num
    collatz_seq = collatz(counter)
    if collatz_seq.length > current_longest_seq.length
      current_longest_seq = collatz_seq
      counter += 1
    else 
      counter += 1
    end
  end
    puts "Starting number is #{current_longest_seq[0]}. With a length of #{current_longest_seq.length}" 
end

find_largest_collatz(1000000)

