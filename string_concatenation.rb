require 'benchmark'

n = 5000000
Benchmark.bmbm do |x|
  a = 'string1 '
  b = 'string2 '
  c = 'string3 '
  d = 'string4 '
  e = 'string5 '
  f = nil
  x.report('+') { 
   n.times do
     f = nil
     f = a + b + c + d + e
   end
  }
  x.report('+=') { 
   n.times do
     f = nil
     f = a
     f += b
     f += c
     f += d
     f += e
   end
  }
  f = nil
  x.report('#{}') { 
   n.times do
     f = nil
     f = "#{a}#{b}#{c}#{d}#{e}"
   end
  }
end