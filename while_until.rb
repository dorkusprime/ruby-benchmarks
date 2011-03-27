require 'benchmark'

n = 1000000
a = 0
Benchmark.bm do |x|
  x.report('While 1') { 
    n.times do
      a = 0
      while a <= 50
        a += 1
      end
    end
  }
  x.report('While 2') {
    n.times do
      a = 0
      while a < 51
        a += 1
      end
    end
  }
  x.report('Until 1') { 
   n.times do
    a = 0
      until a == 51
        a += 1
      end
    end
  }
  x.report('Until 2') { 
   n.times do
    a = 0
      until a > 50
        a += 1
      end
    end
  }
end