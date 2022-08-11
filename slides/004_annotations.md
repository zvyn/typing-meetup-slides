Type hints
==========

> An _annotation_ that specifies the _expected type_ (...)
> Type hints are _optional and are not enforced_ by Python (...)

There are tools to check type annotations _statically_, meaning
_before runtime_.

Most common: mypy, pyright

Hints are also a good way to document intendend behaviour.


Where to start
--------------

Start with the code that would impact the most other code especially code
outside the current repository:

 - libraries: modules that are imported a lot (`utils.py`)
 - APIs: data structures that will be consumed by different processes (REST API)
