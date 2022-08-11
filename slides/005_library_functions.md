Annotating library functions
============================

As a user of a library I want to know what the input and output of the library
look like without reading the code.

This often looks more obvious than it is:

`cut` takes a input file and an output file

*BUT* `ScreemInput` works fine with `cut` despite pyright complaining!

Instead of asking: -Is it a file?

We should ask: _Can I run readline on it?_


Bad solutions
-------------

* annotating `TextIO`, forcing all users of the library to write dead code
* annotating `Any` to make the error go away
* annotating `TextIO | ScreemInput` and ignoring other users of the library


Protocol
--------

Protocols define an interface for _the consumer_ of the interface:

 * the users of the library don't need to change anything
 * type checkers will tell users which parts of the protocol they miss, if any

With a `@runtime_checkable` decorator protocols can be used to check whether an
object implements all it's methods at runtime.
