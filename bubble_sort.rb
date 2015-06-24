require 'benchmark'

Benchmark.realtime do
  1_000_000.times{ rand(1000)^2 }
end

sequence = [4, 3, 5, 0, 1]

def sort(sequence)

  positions = sequence.length
  swapped = true
  swaps = 0

  while swapped
    swapped = false
    positions.times do |pos|
      if sequence[pos + 1] && sequence[pos] > sequence[pos + 1]
        sequence[pos], sequence[pos + 1] = sequence[pos + 1], sequence[pos]
        swaps += 1
        swapped = true
      end
    end
  end
  swaps
end

swaps = sort(sequence)

puts "Final result: #{sequence}"
puts "Swaps: #{swaps}"
puts Benchmark.realtime{ sequence.sort }
