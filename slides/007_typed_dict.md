TypedDict
=========

TypedDict can be used to annotate dictionaries without any runtime cost.

What worked for me: add a seperate `api_models` module with only and all type
definitions. That way they can be easily accessed for different interfaces to
the same data as well as the producers.


Type Aliases
============

When you have simple python objects, like `str`, `int`, etc. it may still be
benifitial to all type aliases as

 1. documentation of what that thing represents
 2. marker which things are the same type by design
 3. preperation to further restrict the type in the future (e.g. using pydantic)
