require 'benchmark'

n = 500000
a = b = c = d = e = f = nil
Benchmark.bm do |x|
   x.report(' Symbols') { 
     n.times do
       a = b = c = d = e = f = nil
       
       a = {
         :key_one     => 'chunky',
         :key_two     => 'string',
         :key_three   => 5280,
         :key_four    => ['a', 'b', 'c', 'd', 32],
         :key_five    => 'foo',
         :key_six     => 'bar',
         :key_seven   => 1234,
         :key_eight   => ['a',1,2,3,4,5,6,7,8,9,0],
         :key_nine    => {:inner_one => 'jkl;', :inner_two => 'asdf'},
         :key_ten     => 'bacon'
       }
       b ={
         :hash    => a,
         :string  => 'test',
         :int     => 12345,
         :float   => 0.12345,
         :array   => ['a', 5, 4, 3, 2, 1]
       }
       c = b[:hash][:key_one]
       d = b[:hash][:key_ten]
       e = b[:string]
       f = "#{c} #{d} #{e}"
     end
   }
   x.report(' Strings') { 
     n.times do
       a = b = c = d = e = f = nil
       
       a = {
         'key_one'     => 'chunky',
         'key_two'     => 'string',
         'key_three'   => 5280,
         'key_four'    => ['a', 'b', 'c', 'd', 32],
         'key_five'    => 'foo',
         'key_six'     => 'bar',
         'key_seven'   => 1234,
         'key_eight'   => ['a',1,2,3,4,5,6,7,8,9,0],
         'key_nine'    => {:inner_one => 'jkl;', :inner_two => 'asdf'},
         'key_ten'     => 'bacon'
       }
       b ={
         'hash'   => a,
         'string' => 'test',
         'int'    => 12345,
         'float'  => 0.12345,
         'array'  => ['a', 5, 4, 3, 2, 1]
       }
       c = b['hash']['key_one']
       d = b['hash']['key_ten']
       e = b['string']
       f = "#{c} #{d} #{e}"
     end
   }
   x.report('Integers') { 
     n.times do
       a = b = c = d = e = f = nil
       
       a = {
         1  => 'chunky',
         2  => 'string',
         3  => 5280,
         4  => ['a', 'b', 'c', 'd', 32],
         5  => 'foo',
         6  => 'bar',
         7  => 1234,
         8  => ['a',1,2,3,4,5,6,7,8,9,0],
         9  => {1 => 'jkl;', 2 => 'asdf'},
        10  => 'bacon'
       }
       b ={
         1  => a,
         2  => 'test',
         3  => 12345,
         4  => 0.12345,
         5  => ['a', 5, 4, 3, 2, 1]
       }
       c = b[1][1]
       d = b[1][10]
       e = b[2]
       f = "#{c} #{d} #{e}"
     end
   }
end