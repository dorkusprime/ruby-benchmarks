require 'benchmark'

n = 50000000
Benchmark.bm do |x|
  a = nil
  x.report('single quotes') { 
   n.times do
     a = nil
     a = 'This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string.'
   end
  }
  x.report('double quotes') { 
   n.times do
     a = nil
     a = "This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string."
   end
  }
end