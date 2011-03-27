require 'benchmark'

n = 1000000
# not a very useful test, since these variables have quite different uses . . . but I was curious, so why not?

Benchmark.bm do |x|
  class TestClassOne
    def initialize
      @a = 5280
      @b = 'chunky bacon'
      @c = {:a => 1, :b => 2}
      @d = [1,2,3,4]
    end
    def read
      return @a.to_s + @b.to_s + @c.to_s + @d.to_s
    end
  end

  class TestClassTwo
    @@a = 5280
    @@b = 'chunky bacon'
    @@c = {:a => 1, :b => 2}
    @@d = [1,2,3,4]
    def initialize

    end
    def self.read
      return @@a.to_s + @@b.to_s + @@c.to_s + @@d.to_s
    end
  end

  
   x.report('Instance Variables') { 
     n.times do
       testClassOne = TestClassOne.new
       testClassOne.read
     end
   }
   
   x.report('Class Variables') { 
     n.times do
       testClassTwo = TestClassTwo.new # initializing, just to keep the tests
       testClassTwo.class::read
     end
   }

end

