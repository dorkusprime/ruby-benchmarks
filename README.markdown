Ruby Benchmarks
===============

Trying to keep this as simple as possible to keep the background noise down.  Just run each respective test by entering:

`ruby ternary_if_else_case.rb`

and the results will be returned.  To create a new one, just copy the template.rb file and change it.

Latest results
--------------

    ternary_if_else_case.rb
    
          user     system      total        real
    ternary  5.480000   0.010000   5.490000 (  5.499066)
    if/else 1  6.270000   0.010000   6.280000 (  6.292527)
    if/else 2  6.090000   0.020000   6.110000 (  6.113204)
    case/switch  8.810000   0.010000   8.820000 (  8.841201)


    instance_class_variables.rb
    
          user     system      total        real
    Instance Variables  2.880000   0.000000   2.880000 (  2.893558)
    Class Variables  1.920000   0.010000   1.930000 (  1.926431)


    symbols_strings_numbers.rb
    
          user     system      total        real
    Symbols  4.540000   0.010000   4.550000 (  4.550397)
    Strings  6.110000   0.010000   6.120000 (  6.141931)
    Integers  4.570000   0.010000   4.580000 (  4.579576)