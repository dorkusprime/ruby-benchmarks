require 'benchmark'

n = 3000000

Benchmark.bmbm do |x|
  return_string = nil
  a = 1
  b = 30
  c = 'test test'
  d = 'test test test'
  
  def blah
    return true
  end
  x.report('ternary') { 
   n.times do
     return_string = nil
   
     return_string = ((a < b) && (c.length < d.length) && !(a + b == 5280) && blah) ? 'crunchy' : 'bacon'

     return_string = ((a > b) || (c.length < d.length) && !(a + b != 5280) && blah) ? 'crunchy' : 'bacon'
   end
  }
  
  x.report('if/else') { 
   n.times do
     return_string = nil
   
     if ((a < b) && (c.length < d.length) && !(a + b == 5280) && blah)
       return_string = 'crunchy'
     else
       return_string = 'bacon'
     end

     if ((a > b) || (c.length < d.length) && !(a + b != 5280) && blah)
       return_string = 'crunchy'
     else
       return_string = 'bacon'
     end
   end
  }
  
end