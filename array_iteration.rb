require 'benchmark'

n = 1000000
Benchmark.bm do |x|
  array = ['this', 'is', 'a', 'long', 'array', 'this', 'is', 'a', 'long', 'array', 'this', 'is', 'a', 'long', 'array', 'this', 'is', 'a', 'long', 'array', 'this', 'is', 'a', 'long', 'array', 'this', 'is', 'a', 'long', 'array', 'this', 'is', 'a', 'long', 'array']
  a = i = nil
  x.report(' .length.times') { 
   n.times do
     a = i = nil
     array.length.times do |i|
        a = array[i]
     end   
   end
  }
  x.report('         .each') { 
   n.times do
     a = nil
     array.each do |i|
       a = i = nil
     end   
   end
  }
  
  x.report('.each_by_index') { 
   n.times do
     a = i = nil
     array.each_index do |i|
       a = array[i]
     end
   end
  }
end

