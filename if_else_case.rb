require 'benchmark'

n = 3000000

Benchmark.bmbm do |x|
  array = ['crunchy', 'bacon', 'foo', 'bar', nil]
  y = nil
  x.report('case') {
    n.times do
      y = nil
      array.each do |b|
        case b
        when 'bar'
          y = 1
        when 'foo'
          y = 2
        when 'bacon'
          y = 3
        when 'crunchy'
          y = 4
        else
          y = 5
        end
      end

    end
  }
  y = nil
  x.report('if/elsif/else ===') {
    n.times do
      y = nil
      array.each do |b|
        if b === 'bar'
          y = 1
        elsif b === 'foo'
          y = 2
        elsif b === 'bacon'
          y = 3
        elsif b === 'crunchy'
          y = 4
        else
          y = 5
        end
      end
    end
  }
  x.report('if/elsif/else ==') {
    n.times do
      y = nil
      array.each do |b|
        if b == 'bar'
          y = 1
        elsif b == 'foo'
          y = 2
        elsif b == 'bacon'
          y = 3
        elsif b == 'crunchy'
          y = 4
        else
          y = 5
        end
      end

    end
  }
end