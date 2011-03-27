require 'benchmark'

n = 20000000
Benchmark.bmbm do |x|
  a = b = nil
  x.report('single quotes') { 
   n.times do
     a = b = nil
     a = 'This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string.'
     b = 'chunky bacon'
   end
  }
  a = b = nil
  x.report('double quotes') { 
   n.times do
     a = b = nil
     a = "This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string.  This is a long test string."
     b = "chunky bacon"
   end
  }
end