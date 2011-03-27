Ruby Benchmarks
===============

Trying to keep this as simple as possible to keep the background noise down.  Just run each respective test by entering:

`ruby ternary_if_else_case.rb`

and the results will be returned.  To create a new one, just copy the template.rb file and change it.

Latest results
--------------

processor: `GenuineIntel Intel(R) Core(TM) i7 CPU M 620  @ 2.67GHz`

ruby version: `ruby 1.9.2p180 (2011-02-18 revision 30909) [i686-linux]`

operating system: `Linux ubuntu 2.6.32-24-generic #42-Ubuntu SMP Fri Aug 20 14:24:04 UTC 2010 i686 GNU/Linux`

    ternary_if_else_case.rb
          user     system      total        real
    ternary  3.500000   0.000000   3.500000 (  4.553587)
    if/else 1  3.380000   0.000000   3.380000 (  4.568171)
    if/else 2  3.250000   0.000000   3.250000 (  4.582760)
    case/switch  4.960000   0.000000   4.960000 (  7.103045)

Interesting . . . this means that if/else statements are (insignificantly) faster than ternary operators, but both are (slightly significantly) faster than a similar case/switch statement.


    instance_class_variables.rb
          user     system      total        real
    Instance Variables  0.880000   0.000000   0.880000 (  1.363280)
    Class Variables  1.140000   0.000000   1.140000 (  1.608564)

Basically a useless test.  I was just curious.


    symbols_strings_numbers.rb
          user     system      total        real
    Symbols  2.600000   0.010000   2.610000 (  3.623395)
    Strings  4.220000   0.010000   4.230000 (  5.896408)
    Integers  2.540000   0.000000   2.540000 (  3.479535)

As I somewhat expected, integers were just a bit faster than symbols, and strings are the slowest by about 60%