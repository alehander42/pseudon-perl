#pseudon-perl

a perl to pseudon translator

Pseudon is a dynamic language intertranspiler: it can translate a subset of each supported language to a any of the others.

This perl to pseudon translator would add automatic support for
  * perl to ruby
  * perl to coffeescript
  * perl to python
  * perl to any other pseudon-supported language

[pseudon compiler](https://github.com/alehande42/pseudon)

## supported subset

pseudon supports a very clear and somehow limited subset of a language:

  * basic types: integer, float, string, boolean, nil
  * lists
  * dicts
  * standard library methods for the basic types
  * classes (only as collection of instance methods, no static/metaprogramming supported)

## why

Supporting full-blown Perl to Ruby auto translation is hard.
However often we need to

  * translate/support some algorithms in different languages
  * translate/support some text/data processing tool in different languages
  * generate code for the same task/algorithm in different languages

Often that code is(or can be) expressed in very similar way, with
similar constructs and basic types and data structures. On that level
a lot of dynamic languages are very similar and the only real difference
is syntax and methods api. That's a feasible task for automatic translation
and actually the existance of `pseydon` is to fullfill a need of another
existing project.

You can almost think of it in a "~json-for-algorithms" way: we express
our code with standard basic types, collections and simple classes and we can translate to a common format(pseudon code) and using it as a middle ground between each supported language
