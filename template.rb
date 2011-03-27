require 'benchmark'

n = 10000000
Benchmark.bm do |x|
  x.report('NAME HERE') { 
   n.times do
     # CODE HERE
   end
  }
end