require 'benchmark'

n = 1000000
a = 0
Benchmark.bmbm do |x|
  a = 0
  x.report('While 1') { 
    n.times do
      a = 0
      while a <= 50
        a += 1
      end
    end
  }
  
  a = 0
  x.report('While 2') {
    n.times do
      a = 0
      while a < 51
        a += 1
      end
    end
  }

  a = 0
  x.report('Until 1') { 
   n.times do
    a = 0
      until a == 51
        a += 1
      end
    end
  }

  a = 0
  x.report('Until 2') { 
   n.times do
    a = 0
      until a > 50
        a += 1
      end
    end
  }
end