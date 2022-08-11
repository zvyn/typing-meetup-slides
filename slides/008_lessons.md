Take aways
==========

1. Start with annotating your APIs:
   Libraries used in a lot of modules and network API output
2. Use `Protocols` instead of requiering complex objects in reusable code
3. When pydantics `BaseModel` the feasable consider `TypedDict` for your JSON APIs


Lessons Learned
===============

- Careful with `slots`: they add serialization overhead, also FastAPI breaks
- Careful with `tuple`: when documenting JSON APIs using `TypedDict` you should
  only use JSON types
- Careful with pydantic `BaseModel`: it accepts _any_ `Mapping` by default,
  ignoring extra keys that aren't in the model

