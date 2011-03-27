require 'benchmark'

n = 10000000

Benchmark.bmbm do |x|
  b = d = nil
  a = true
  c = false
   x.report('ternary') { 
     n.times do
       a = b = c = d = nil
       
       a = true
       b = a ? 'true' : 'false'
       
       c = false
       d = c ? 'true' : 'false'
     end
   }
   a = b = c = d = nil
   x.report('if/else 1') {
     n.times do
       a = b = c = d = nil
       
       if a
         b = 'true'
       else
         b = 'false'
       end
       
       if c
         d = 'true'
       else
         d = 'false'
       end
     end
   }
   a = b = c = d = nil
   x.report('if/else 2') {
     n.times do
       a = b = c = d = nil
       
       b = if a
          'true'
        else
          'false'
        end

        d = if a
           'true'
         else
           'false'
         end
     end
   }
   a = b = c = d = nil
   x.report('case') {
     n.times do
       a = b = c = d = nil
       
       case a
       when true
         b = 'true'
       when false
         b = 'false'
       end
       
       case c
       when true
         b = 'true'
       when false
         b = 'false'
       end

     end
   }
   
end