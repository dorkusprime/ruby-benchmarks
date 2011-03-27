Ruby Benchmarks
===============

Trying to keep this as simple as possible to keep the background noise down.  Just run each respective test by entering:

`ruby ternary_if_else_case.rb`

and the results will be returned.  To create a new one, just copy the template.rb file and change it.

Latest results
--------------
Check out the source code to see what these tests do.

    ternary_if_else_case.rb
                      user     system      total        real
    ternary       3.340000   0.000000   3.340000 (  4.829742)
    if/else 1     3.540000   0.000000   3.540000 (  4.983159)
    if/else 2     3.280000   0.000000   3.280000 (  4.901104)
    case/switch   5.190000   0.000000   5.190000 (  7.523282)

*Interesting . . . this means that if/else statements are (insignificantly) faster than ternary operators, but both are (significantly) faster than a similar case/switch statement.*

    symbols_strings_numbers.rb
                   user     system      total        real
    Symbols    2.580000   0.010000   2.590000 (  3.749017)
    Strings    4.340000   0.000000   4.340000 (  6.239996)
    Integers   2.640000   0.000000   2.640000 (  3.649435)

*As I sort of expected, integers are about the same speed as symbols, and strings are the slowest.  Of course, the times will be directly affected by the complexity of the hashes used and of the operations performed on them, so these times here should be taken lightly.  My guess, though, is that further complexity will only serve to make the differences more pronounced (especially in the 'strings' case).*

    array_iteration.rb
                         user     system      total        real
    .length.times    3.190000   0.000000   3.190000 (  4.543664)
    .each            2.370000   0.000000   2.370000 (  3.575810)
    .each_by_index   3.140000   0.000000   3.140000 (  4.476254)

*No major surprises here, other than that each_by_index took even longer than array.length.times*

    string_concatenation.rb
              user     system      total        real
    +     3.980000   0.000000   3.980000 (  5.452488)
    +=    4.140000   0.000000   4.140000 (  5.960544)
    #{}   3.580000   0.000000   3.580000 (  4.614749)

*Well this one's a bit of a surprise.  Concatenating inside double-quotes with the is the fastest.  It makes sense, though, as + actually involves calling the '+' method of the individual string objects.  Also, the difference between single-lined + and multiple-lined += was less than I thought it would be.  This lead me to wonder about the classic single vs. double quotes argument.*

    single_double_quotes.rb
                        user     system      total        real
    single quotes   5.120000   0.000000   5.120000 (  6.883439)
    double quotes   5.130000   0.010000   5.140000 (  6.886382)

*I hoped this would be the case.  They're basically the same.*

    while_until.rb
                  user     system      total        real
    While 1   1.760000   0.000000   1.760000 (  2.543152)
    While 2   1.940000   0.000000   1.940000 (  2.569687)
    Until 1   1.610000   0.000000   1.610000 (  2.422960)
    Until 2   1.470000   0.000000   1.470000 (  2.493376)

*Negligible differences here, also*

    instance_class_variables.rb
                             user     system      total        real
    Instance Variables   6.620000   0.000000   6.620000 (  9.430373)
    Class Variables      6.000000   0.010000   6.010000 (  8.439407)

*Basically a useless test.  I was just curious.*

Test Platform
-------------
The platform used for the above test results.

processor: `GenuineIntel Intel(R) Core(TM) i7 CPU M 620  @ 2.67GHz`

ruby version: `ruby 1.9.2p180 (2011-02-18 revision 30909) [i686-linux]`

operating system: `Linux ubuntu 2.6.32-24-generic #42-Ubuntu SMP Fri Aug 20 14:24:04 UTC 2010 i686 GNU/Linux`