require 'benchmark'

n = 10000000
a = b = c = d = nil

Benchmark.bm do |x|
   x.report('ternary') { 
     n.times do
       a = b = c = d = nil
       
       a = true
       b = a ? 'true' : 'false'
       
       c = false
       d = c ? 'true' : 'false'
     end
   }
   x.report('if/else 1') {
     n.times do
       a = b = c = d = nil
       
       a = true
       if a
         b = 'true'
       else
         b = 'false'
       end
       
       c = false
       if c
         d = 'true'
       else
         d = 'false'
       end
     end
   }
   x.report('if/else 2') {
     n.times do
       a = b = c = d = nil
       
       a = true
       b = if a
          'true'
        else
          'false'
        end
        c = false
        d = if a
           'true'
         else
           'false'
         end
     end
   }
   
   x.report('case/switch') {
     n.times do
       a = b = c = d = nil
       
       a = true
       case a
       when true
         b = 'true'
       when false
         b = 'false'
       end
       
       c = false
       case c
       when true
         b = 'true'
       when false
         b = 'false'
       end

     end
   }
   
end