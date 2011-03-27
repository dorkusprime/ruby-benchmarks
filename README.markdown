Ruby Benchmarks
===============

Trying to keep this as simple as possible to keep the background noise down.  Just run each respective test by entering:

`ruby ternary_if_else_case.rb`

and the results will be returned.  To create a new one, just copy the template.rb file and change it.

Latest results
--------------
Check out the source code to see what these tests do.

    ternary_if_else_case.rb
                 user       system     total    real
      ternary    3.500000   0.000000   3.500000 (  4.553587)
      if/else 1  3.380000   0.000000   3.380000 (  4.568171)
      if/else 2  3.250000   0.000000   3.250000 (  4.582760)
    case/switch  4.960000   0.000000   4.960000 (  7.103045)

*Interesting . . . this means that if/else statements are (insignificantly) faster than ternary operators, but both are (slightly significantly) faster than a similar case/switch statement.*

    symbols_strings_numbers.rb
              user      system      total    real
     Symbols  2.600000   0.010000   2.610000 (  3.623395)
     Strings  4.220000   0.010000   4.230000 (  5.896408)
    Integers  2.540000   0.000000   2.540000 (  3.479535)

*As I sort of expected, integers were just slightly faster than symbols, and strings are the slowest.  Of course, the times will be directly affected by the complexity of the hashes used and of the operations performed on them, so these times here should be taken lightly.  My guess, though, is that further complexity will only serve to make the differences more pronounced (especially in the 'strings' case).*

                    user       system     total    real
     .length.times  3.240000   0.000000   3.240000 (  4.614830)
             .each  2.460000   0.000000   2.460000 (  3.530593)
    .each_by_index  3.410000   0.000000   3.410000 (  4.810327)

*No major surprises here, other than that each_by_index took even longer than array.length.times*

    string_concatenation.rb
         user       system     total    real
      +  3.620000   0.000000   3.620000 (  5.070251)
     +=  4.260000   0.000000   4.260000 (  5.598047)
    #{}  2.990000   0.000000   2.990000 (  4.320495)

*Well this one's a bit of a surprise.  Concatenating inside double-quotes with the is the fastest.  It makes sense, though, as + actually involves calling the '+' method of the individual string objects.  Also, the difference between single-lined + and multiple-lined += was less than I thought it would be.  This lead me to wonder about the classic single vs. double quotes argument.*

                  user        system    total     real
    single quotes 11.760000   0.030000  11.790000 ( 11.812320)
    double quotes 11.860000   0.030000  11.890000 ( 11.913577)

*I kind of hoped this would be the case.  They're basically the same.*

    instance_class_variables.rb
                        user       system     total    real
    Instance Variables  6.120000   0.000000   6.120000 (  8.681047)
       Class Variables  5.420000   0.000000   5.420000 (  7.376550)

*Basically a useless test.  I was just curious.*

Test Platform
-------------
The platform used for the above test results.

processor: `GenuineIntel Intel(R) Core(TM) i7 CPU M 620  @ 2.67GHz`

ruby version: `ruby 1.9.2p180 (2011-02-18 revision 30909) [i686-linux]`

operating system: `Linux ubuntu 2.6.32-24-generic #42-Ubuntu SMP Fri Aug 20 14:24:04 UTC 2010 i686 GNU/Linux`