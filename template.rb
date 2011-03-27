require 'benchmark'

n = 10000000
Benchmark.bmbm do |x|
  x.report('NAME HERE') { 
   n.times do
     # CODE HERE
   end
  }
end